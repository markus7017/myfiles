---
name: oh-shelly
description: "Complete knowledge for the openHAB Shelly binding (org.openhab.binding.shelly) development. Use this skill whenever the conversation involves: adding device support, handler changes, config classes, CoIoT/CoAP, Gen1/Gen2 API, discovery, channel definitions, ShellyBindingConfiguration, ShellyBindingRuntimeConfig, ShellyApiConfiguration, ShellyThingConfiguration, ShellyHandlerFactory, ShellyBaseHandler, ShellyDeviceProfile, ShellyComponents, Maven build, Spotless formatting, test coverage, or any PR work on this binding. Triggers on: 'shelly binding', 'shelly handler', 'ShellyBase', 'ShellyBinding', 'ShellyApi', 'CoIoT', 'Gen1', 'Gen2', 'ShellyManager'. Always load this skill before answering questions about the binding — it contains critical design decisions, the config-class two-layer split, and conventions that must be respected."
---

# openHAB Shelly Binding — Developer Skill

Working directory: `/Users/mmichels/Dev/openhab-5.2/git/openhab-addons/bundles/org.openhab.binding.shelly`
Developer: Markus Michels (`markus.michels@mgm-tp.com`)
Fork: `markus7017/openhab-addons`

For deep-dive architecture documentation read `DEVELOPER.md` in the binding directory.

## Reference Files

| File                         | Content                                                 | Load when…                                         |
|------------------------------|---------------------------------------------------------|----------------------------------------------------|
| `references/config-classes.md` | Full config-class design, two-layer split, update paths | Any config work, binding/thing settings            |
| `references/architecture.md`   | Gen1/Gen2 API split, handler hierarchy, update flow     | New device, channel, API change                    |
| `references/conventions.md`    | Coding rules, immutability, null-safety, test patterns  | Any code change or review                          |
| `references/build.md`          | Maven commands, Spotless, markdownlint, test class names | Build, CI, formatting issues                       |

## Build

```bash
mvn spotless:apply -pl :org.openhab.binding.shelly          # always run BEFORE build
mvn clean install -pl :org.openhab.binding.shelly -DskipTests -DskipChecks -Dmarkdownlint.skip=true
```

Full CI (required before PR): `mvn install` — runs markdownlint + PMD + spotless check.

**Never edit `shelly_de.properties`.**
Translations are managed through an external process.
Only `shelly.properties` (English) is edited directly.

## Config Class Hierarchy

```
ShellyBindingConfiguration   ← POJO; raw OSGi props; never shared across threads
  + NetworkAddressService
  ↓
ShellyBindingRuntimeConfig   ← immutable; IP resolved; HTTP port set; volatile in factory/handler
  + ShellyThingConfiguration  ← POJO; per-thing settings from OH UI
  ↓
ShellyApiConfiguration       ← immutable per-thing snapshot; only object the API layer sees
```

- Link-local IPs (`169.254.x.x`) are silently discarded in `ShellyBindingRuntimeConfig`.
- `ShellyHandlerFactory` and `ShellyBaseHandler` hold `bindingConfig` as `volatile ShellyBindingRuntimeConfig`.
- Default Gen2 credentials: `admin` / `admin` (`SHELLY2_DEFAULT_USERID` / `SHELLY2_DEFAULT_PASSWORD`).

## Active Branches

| Branch                  | Status         | Topic                                              |
|-------------------------|----------------|----------------------------------------------------|
| `shelly_fixmeters`      | Pushed to fork | Meter bug fixes (Pro3EM, EM50, roller, counters)   |
| `shelly_wifireconnect`  | Local (WIP)    | BLU WiFi reconnect hardening + Gen3 Duo/Color Bulb support |

---

## PR: `shelly_fixmeters`

5 commits ahead of main. 415 tests passing.

| Bug | Fix location |
|-----|-------------|
| `updateMeters()` routed roller/RGBW2 through `updateEMeters()` on Gen2 | `ShellyComponents.updateMeters()` — added `&& !profile.isGen2` |
| `ArrayIndexOutOfBoundsException` on `counters[0]` (empty array) | `updateSimpleMeters()`, `updateAggregatedMeter()` — `counters.length > 0` guard |
| NPE when `status.meters` / `status.emeters` is null | Null guard at entry of all three meter update methods |
| EM50 frequency channel written when EM50 has no per-meter frequency | `updateEMeters()` — `if (emeter.frequency != null)` guard |
| `isCB` flag set after the line using it | `Shelly2ApiRpc.getDeviceProfile()` — `isCB` must be set BEFORE `fillRelaySettings` / `fillBreakerSettings` |
| Phase C accumulated energy dropped for 3-phase `em1data` | Added `em1data0.cTotal → emeters[2].total` mapping |
| Gen2 3-phase neutral current never reached channels | `updateEmStatus()` maps `em.nCurrent → status.neutralCurrent` |
| `numMeters` resolved inconsistently | Extracted `resolveNumMeters()` static method |

**Deferred** (next PR after `shelly_fixmeters` merges): ProEM50 3-meter layout + Gen2 `lastPower1` channel.
Full spec: `.wolf/proem50_deferred_pr.md`.

---

## PR: `shelly_wifireconnect` — BLU Reconnect Hardening

Fixes BLU devices (esp. BLU Motion) stopping updates after hub loses and regains WiFi.

**Architecture:** BLU device → hub (runs `oh-blu-scanner.js`) → `Shelly.emitEvent()` → binding WebSocket → `onNotifyEvent()` → channel updates.
One BLU thing may receive events from **multiple** hub gateways (1:n topology).

### Bug 1 — `installScript()` stops running script unnecessarily

`Shelly2ApiRpc.installScript()` used to stop a running script before checking if code changed.
If the restart failed silently, the hub came back ONLINE without restarting the script — permanently stopping BLU events.

**Fix:** if the installed script version matches and the script is already running, leave it undisturbed.
Only stop + restart when the code actually changed.

### Bug 2 — BLU watchdog never fires after hub reconnect

`ShellyBluApi.getStatus()` returned cached data without raising an exception, so the watchdog could never expire and take the thing OFFLINE, even when no events had arrived for hours.

**Fix:** added `private double lastEventTimestamp` to `ShellyBluApi`.
`getStatus()` now throws `ShellyApiException("offline.status-error-blu-timeout")` when `lastEventTimestamp > 0` and `now() - lastEventTimestamp > updatePeriod`.
`onNotifyEvent()` sets `lastEventTimestamp = now()` on every event from any gateway — keeping the thing alive as long as any hub is in range.

### Bug 3 — Hub handler reassigned by BLU event routing

`Shelly2RpcSocket` was reassigning the shared `handler` variable when routing BLU events, corrupting the hub's handler reference.

**Fix:** use local `bluThing` / `bluHandler` variables for BLU routing; never touch the hub's `handler`.

### Bug 4 — Hub goes ONLINE after reconnect but skips re-init

`ShellyBaseHandler.setThingOfflineAndDisconnect()` did not reset `profile.initialized = false`.
On reconnect the hub came back ONLINE but used a stale profile, skipping `asyncApiRequest` and the BLU scanner script restart.

**Fix:** add `profile.initialized = false` in `setThingOfflineAndDisconnect()`.

### i18n keys added to `shelly.properties`

```
message.offline.status-error-blu-not-connected  = BLU device not yet connected - no events received from any gateway.
message.offline.status-error-blu-sensor-unavailable = BLU sensor data not yet available - no events received from any gateway.
message.offline.status-error-blu-timeout = BLU device stopped reporting: no event received within expected update period.
```

---

## Branch: `shelly_wifireconnect` — Gen3 Bulb Devices (in addition to BLU fixes)

Adds two new Gen3 bulb devices.
Both use the Gen2 RPC API (same protocol, Gen3 hardware).

| Device | Thing type ID | mDNS firmware name | Profile flags | API component |
|--------|-------------|-------------------|---------------|---------------|
| Shelly Duo Bulb E27 (`S3BL-D010009AEU`, SSID `ShellyDuoBulbG3`) | `shellyplusduobulb` | `shellyduobulbg3` | `isDuo=true, isGen2=true` | `cct:0` — brightness + CCT |
| Shelly Multicolor Bulb E27 (`S3BL-C010007AEU`, SSID `ShellyColorBlbG3`) | `shellypluscolorbulb` | `shellycolorblbg3` | `isRGBBulb=true, isGen2=true` | `rgb:0` — RGB + CCT |

**CRITICAL — `shellyplusduobulb` / `shellypluscolorbulb` naming:**
The `shellyplus` prefix means `isGeneration2()` picks them up automatically via the existing `startsWith("shellyplus")` check.
No `GROUP_GEN3_BULB_THING_TYPES` workaround is needed.

**CRITICAL — Duo Bulb G3 uses `cct:0`, NOT `light:0`:**
`Light.GetStatus` returns HTTP 404 on this device — the Duo Bulb G3 has no `Light` component.
The component name in `Shelly.GetStatus` is `"cct:0"` (Color Correlated Temperature).
Use `CCT.GetStatus` / `CCT.Set` / `CCT.SetConfig` for all Duo operations.

### CCT Component — DTO classes

```java
// Shelly2ApiJsonDTO — constants
public static final String SHELLYRPC_METHOD_CCT_STATUS  = "CCT.GetStatus";
public static final String SHELLYRPC_METHOD_CCT_SET     = "CCT.Set";
public static final String SHELLYRPC_METHOD_CCT_SETCONFIG = "CCT.SetConfig";

// Shelly2DeviceStatus — peer of Shelly2DeviceStatusLight
public static class Shelly2CCTStatus {
    public @Nullable Integer id;
    public @Nullable String  source;
    public @Nullable Boolean output;
    public @Nullable Double  brightness;
    public @Nullable Integer ct;          // color temperature in K
    public @Nullable Shelly2Energy aenergy;
    public @Nullable Double  apower;
}

// Shelly2DeviceStatusResult field
@SerializedName("cct:0")
public @Nullable Shelly2CCTStatus cct0;

// Shelly2GetConfigResult field — reuses Shelly2GetConfigLight (same relevant fields)
@SerializedName("cct:0")
public @Nullable Shelly2GetConfigLight cct0;
```

### Dual Name Map — Service Name vs Thing Type ID

`THING_TYPE_BY_SERVICE_NAME` needs **two entries per Gen3 bulb**:
- Firmware mDNS broadcast: `"shellyduobulbg3"` → `THING_TYPE_SHELLYPLUSDUOBULB`
- Thing-type-id alias (for `ShellyThingCreatorTest` roundtrip): `"shellyplusduobulb"` → `THING_TYPE_SHELLYPLUSDUOBULB`

```java
Map.entry("shellyduobulbg3",      THING_TYPE_SHELLYPLUSDUOBULB),
Map.entry("shellyplusduobulb",    THING_TYPE_SHELLYPLUSDUOBULB),  // alias for roundtrip test
Map.entry("shellycolorblbg3",     THING_TYPE_SHELLYPLUSCOLORBULB),
Map.entry("shellypluscolorbulb",  THING_TYPE_SHELLYPLUSCOLORBULB), // alias for roundtrip test
```

### Gen3 Device Integration Pattern

1. Add `SHELLYDT_*` model ID constant and `THING_TYPE_SHELLYPLUS*` UID in `ShellyDevices.java`.
   **Name with `shellyplus` prefix** so `isGeneration2()` activates automatically — no extra group needed.
2. Add to the appropriate group (`GROUP_DUO_THING_TYPES`, `GROUP_RGB_BULB_THING_TYPES`, etc.).
3. Add two name-map entries per device in `THING_TYPE_BY_SERVICE_NAME` (mDNS firmware name + thing-type-id alias).
4. Add XML thing type in `shellyGen2_lights.xml`.
5. Add i18n label + description in `shelly.properties` (**never `shelly_de.properties`**).
6. If a new profile flag is needed, add it to `ShellyDeviceProfile` and set it in `initFromThingType()`.
7. Add `fill*Settings()` + `update*Status()` methods in `Shelly2ApiClient`.
8. Add `getLightStatus()` / `getLightStatus(int)` / `setBrightness()` / `setLightTurn()` / `setAutoTimer()` / `setLightParms()` paths in `Shelly2ApiRpc`.
9. Update light handler channel conditions in `ShellyLightHandler` if needed.

### Key Design Rules for Gen2/Gen3 Light Devices

- `isDuo=true` → `ShellyLightHandler`, white/CCT channels.
  White channel path gated by `(!inColor && !isGen2) || isBulb || (isDuo && isGen2)`.
- `isRGBW2=true, isGen2=true` → color channel path, uses `RGBW.GetStatus` / `RGBW.Set` (separate W channel).
- `isRGBBulb=true` → new flag for RGB+CCT bulbs with `rgb:0` component.
  Uses `RGB.GetStatus` / `RGB.Set`. Color channel path extends to `isRGBW2 || isRGBBulb`.
- `GROUP_RGB_BULB_THING_TYPES` is separate from `GROUP_RGBW2_THING_TYPES` — incompatible component types.

### DTO Nesting Rule

`Shelly2RGBStatus` (and `Shelly2RGBWStatus`) must be **`static` inner classes of `Shelly2DeviceStatusResult`**.
If placed at the `Shelly2DeviceStatus` level, the fully-qualified import path is wrong and the class cannot be resolved.

### `setLightParms()` Bug (fixed in this PR)

The original `Shelly2ApiRpc.setLightParms()` fell through to `throw` even after a successful RGBW API call.
Rewired to a proper `if / else if / else` structure — one branch executes, no fall-through.

### Private Methods and `getProfile()`

`getProfile()` declares `throws ShellyApiException`.
Any private/protected method that calls it must also declare `throws ShellyApiException`.

---

## Range Extender — Device Addressing

In range extender mode Device A (gateway) and Device B (client) share the same IP.
Device B is distinguished by a virtual port.

| Scenario             | Format             | Example                  |
|----------------------|--------------------|--------------------------|
| Normal / gateway     | IP only            | `192.168.1.100`          |
| Range extender client | IP:port           | `192.168.1.100:8080`     |
| FQDN                 | hostname           | `shellypro1pm-aabbcc.local` |

`ShellyThingTable.findThing(InetSocketAddress)` two-step strategy:

1. Exact `IP:port` match (finds range extender client).
2. Fall back to IP-only (finds normal device / gateway).

---

## Test Coverage

| Package      | Test class                    | Covers                                                    |
|--------------|-------------------------------|-----------------------------------------------------------|
| `config/`    | `ShellyBindingConfigurationTest` | POJO defaults, `fromProperties`, runtime IP resolution |
| `config/`    | `ShellyApiConfigurationTest`  | Credential merging, URL construction, event flags         |
| `config/`    | `ShellyThingConfigurationTest` | Default values, field access                             |
| `handler/`   | `ShellyThingTableTest`        | `findThing(InetSocketAddress)` two-step lookup            |
| `handler/`   | `ShellyComponentsTest`        | Meter update paths (null/bounds guards, routing, neutral current) |
| `api/`       | `ShellyDeviceProfileTest`     | `resolveNumMeters()` priority chain                       |
| `discovery/` | `ShellyThingCreatorTest`      | `getThingUIDReturnsThingTypeMatchingServiceName` — iterates all supported thing types, constructs `thingTypeId-DEVICE_ID` as service name, expects roundtrip. **Requires dual alias entries** in `THING_TYPE_BY_SERVICE_NAME` for Gen3 bulbs. |

Mockito needs explicit `mockito-core` in `pom.xml` (not inherited by default).
