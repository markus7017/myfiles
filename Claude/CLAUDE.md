# OpenWolf

@.wolf/OPENWOLF.md

This project uses OpenWolf for context management. Read and follow .wolf/OPENWOLF.md every session. Check .wolf/cerebrum.md before generating code. Check .wolf/anatomy.md before reading files.

# CLAUDE.md

## Build Commands

```bash
# Build the binding
mvn clean install -pl :org.openhab.binding.shelly

# Build skipping tests and checks (fast iteration)
mvn clean install -pl :org.openhab.binding.shelly -DskipTests -DskipChecks -Dmarkdownlint.skip=true

# Run all tests
mvn test -pl :org.openhab.binding.shelly

# Run a single test class
mvn test -pl :org.openhab.binding.shelly -Dtest=ShellyThingTableTest

# Apply Spotless formatting (always run after edits — CI enforces it)
mvn spotless:apply -pl :org.openhab.binding.shelly
```

## Key Design Invariants

**Config class hierarchy:**

```text
ShellyBindingConfiguration   ← POJO; raw OSGi props; never shared
  + NetworkAddressService
  ↓
ShellyBindingRuntimeConfig   ← thread-safe; IP resolved; held volatile in factory/handler
  + ShellyThingConfiguration  ← POJO; per-thing settings
  ↓
ShellyApiConfiguration       ← per-thing snapshot; only object the API layer sees
```

**Device address formats** — three forms, all handled by `ShellyApiConfiguration.getDeviceHostAddress()`:

- Normal device: `"192.168.1.100"` (IP only)
- Range extender client: `"192.168.1.100:8080"` (IP:port — same IP as gateway, different port)
- FQDN: `"shellypro1pm-aabbcc.local"` (resolved before connecting)

**`ShellyThingTable` lookup** — `findThing(InetSocketAddress)` uses a two-step strategy:

1. Try exact `IP:port` match first (range extender client wins over gateway)
1. Fall back to IP-only (normal devices, gateway)

This prevents Device A's profile (e.g. numMeters=1) from being applied to Device B (e.g. numMeters=0) when both share an IP.

**Thread safety:**

- `ShellyBindingRuntimeConfig` and `ShellyApiConfiguration` are immutable after construction.
- `ShellyHandlerFactory` and `ShellyBaseHandler` hold `bindingConfig` as `volatile`.
- `ShellyThingTable` guards all map access with `synchronized (this)`.

**Null safety:** `@NonNullByDefault` is package-wide. Use `@Nullable` for fields that can be null. Always use `ShellyUtils.getBool/getDouble/getString()` for DTO fields.

## Conventions

- All API exceptions wrap to `ShellyApiException`.
- Always update channels via `handler.updateChannel(group, channel, state)` — never `updateState()` directly.
- Thing config: read via `getConfigAs(ShellyThingConfiguration.class)`, never by string key.
- Tests: `src/test/…/config/` for config tests, `src/test/…/handler/` for handler/table tests. Mockito requires explicit `mockito-core` dependency in pom.xml.

## Further Reading

[doc/DEVELOPER.md](doc/DEVELOPER.md) — architecture, range extender design, adding devices/channels.
