# Architecture Overview

See also: `doc/DEVELOPER.md` §§ 1–10 for full detail, flow diagrams, and code examples.

## API Layer — Gen1 vs Gen2

`ShellyApiInterface extends ShellyDiscoveryInterface`. The discovery sub-interface carries
`initialize()` (no throws), `getDeviceInfo()`, `getDeviceProfile()`, and `close()` — the
four methods the discovery service needs. Full device control is in `ShellyApiInterface`.
`Shelly2ApiClient` (discovery only, no WebSocket) implements `ShellyDiscoveryInterface`
directly and requires an empty `initialize()` override.

Two parallel implementations behind `ShellyApiInterface`:

| Generation | Protocol | Key classes |
|---|---|---|
| Gen1 | REST/HTTP polling + optional CoIoT (CoAP multicast) | `Shelly1HttpApi`, `Shelly1CoapHandler`, `Shelly1CoapServer` |
| Gen2/3/4 | JSON-RPC over WebSocket + HTTP fallback | `Shelly2ApiRpc`, `Shelly2RpcSocket`, `Shelly2ApiClient` |
| BLU | Bluetooth via Gen2 gateway | `ShellyBluApi` routed through `ShellyThingTable` |

The handler layer never calls Gen1/Gen2 classes directly — always via `ShellyApiInterface`.

## Handler Hierarchy

```
ShellyHandlerFactory           createHandler() based on ThingTypeUID
  └── ShellyBaseHandler        (abstract) — polling, state mgmt, command routing
        ├── ShellyRelayHandler      — relay/switch/roller/shutter
        ├── ShellyLightHandler      — dimmer, RGBW2, bulb
        ├── ShellyBluHandler        — BLU Bluetooth sensors/buttons
        └── ShellyProtectedHandler  — placeholder until credentials provided
```

`ShellyHandlerFactory` also holds the `Shelly1CoapServer` singleton and the `WebSocketClient`.

## Update Flow

```
Push (CoAP/WebSocket) → handler callback → ShellyComponents → updateState()
Polling job (60s)     → API query        → ShellyComponents → updateState()
Command               → handler          → ShellyApiInterface → device
```

`ShellyComponents` is the only place that converts API DTOs to openHAB `State` objects. Never put DTO-to-state logic in handlers.

## Device Profiling

`ShellyDeviceProfile` is populated at initialization by probing the device (`/shelly`, `/settings`, `/status`). It determines:
- Number of relays, meters, roller mode
- Sensor capabilities (temperature, humidity, motion, flood, …)
- Generation (Gen1/2/3/4), firmware version
- Whether CoIoT/CoAP is available

Profile drives dynamic channel creation via `ShellyChannelDefinitions`. Channels are **not** statically defined in XML.

## Range Extender Mode

Device A (gateway, e.g. Pro 1PM) and Device B (client, e.g. Pro 2) share the same IP.
`ShellyApiConfiguration.getDeviceHostAddress()` returns `"IP"` for Device A and `"IP:port"` for Device B.
Things are registered in `ShellyThingTable` under these keys.

`ShellyThingTable.findThing(InetSocketAddress)` does a **two-step lookup**: IP:port first (matches
Device B), falls back to IP-only (matches Device A). This prevents Device A's profile from being
applied to Device B when both share an IP.

## Key Supporting Classes

| Class | Purpose |
|---|---|
| `ShellyThingTable` | OSGi singleton registry of all active handlers; used by Manager UI, CoAP routing, BLU gateway, range extender lookup |
| `ShellyChannelCache` | Deduplication cache — skips `updateState()` when value unchanged |
| `ShellyBindingConstants` | Central constants for all channel UIDs, property keys, timing |
| `ShellyDevices` | Maps `ThingTypeUID` to device capabilities / thing-type groups |
| `ShellyUtils` | Null-safe conversions: `getBool()`, `getDouble()`, `getString()` |
| `ShellyDeviceStats` | Per-device counters (reconnects, comm errors, last update, …) |

## DTOs

All JSON payloads map to static inner classes:
- `Shelly1ApiJsonDTO` — Gen1 responses (`/settings`, `/status`, `/relay/N`, …)
- `Shelly2ApiJsonDTO` — Gen2/3/4 RPC responses

Always use existing DTO fields. When adding a new field, add it to the existing DTO class — never create a new DTO class for a single field.

## Discovery

Two paths:
1. **mDNS** (`ShellyMDNSDiscoveryParticipant`) — listens for `_http._tcp.local.` / `_shelly._tcp.local.`, probes device via `ShellyBasicDiscoveryService.createResult()`
2. **BLU gateway** — Gen2 device pushes BLU scan results; handler calls `ShellyThingTable.discoveryResult()`

`ShellyThingCreator.getThingUID()` maps device model strings (e.g. `"shelly1pm"`, `"SHDM-2"`) to `ThingTypeUID`.

## Package Layout (abbreviated)

```
internal/
├── ShellyHandlerFactory.java      — OSGi DS component, thing factory
├── ShellyBindingConstants.java    — all channel UIDs, property keys, constants
├── ShellyDevices.java             — thing-type ↔ device-capability mapping
├── api/                           — ShellyApiInterface + ShellyDeviceProfile
├── api1/                          — Gen1 HTTP/CoAP
├── api2/                          — Gen2 WebSocket/RPC
├── config/                        — ShellyBindingConfiguration, ShellyBindingRuntimeConfig,
│                                    ShellyThingConfiguration, ShellyApiConfiguration
├── discovery/                     — mDNS + basic discovery
├── handler/                       — ShellyBaseHandler and subclasses
├── manager/                       — /shelly web UI (ShellyManagerServlet, ShellyManagerPage)
└── provider/                      — ShellyChannelDefinitions, ShellyTranslationProvider
```
