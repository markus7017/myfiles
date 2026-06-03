# Config Classes — Two-Layer Split

See also: `doc/DEVELOPER.md` § 11 "Configuration Classes"

## The Four Classes

### `ShellyBindingConfiguration` (POJO)

- **Location:** `internal/config/ShellyBindingConfiguration.java`
- **Role:** Mirrors OSGi config PID `binding.shelly`. Mutable; populated by `fromProperties()`. Never shared across threads.
- **Fields:** `defaultUserId` (default `"admin"`), `defaultPassword` (default `"admin"`), `localIP` (empty = no admin override), `autoCoIoT` (default `true`)
- **Key API:** `fromProperties(@Nullable Map<String, Object>)`, `fromProperties(@Nullable Dictionary<String, Object>)`
- **Does NOT have:** IP resolution, HTTP port, `withHttpPort()`, `getHttpPort()`

### `ShellyBindingRuntimeConfig` (immutable runtime)

- **Location:** `internal/config/ShellyBindingRuntimeConfig.java`
- **Role:** Immutable snapshot built from `ShellyBindingConfiguration` + `NetworkAddressService`. Long-lived; held as `volatile` in `ShellyHandlerFactory` and `ShellyBaseHandler`.
- **Construction:** `new ShellyBindingRuntimeConfig(ShellyBindingConfiguration config, NetworkAddressService nas)`
  - If `config.getLocalIP()` is non-blank → uses it directly (admin override)
  - Otherwise → calls `nas.getPrimaryIpv4HostAddress()`; link-local `169.254.x.x` → empty string
- **Key API:** `withHttpPort(int)` returns new instance; `getHttpPort()` returns `DEFAULT_LOCAL_PORT` when internal value is `-1`
- **Stored as:** `private volatile ShellyBindingRuntimeConfig bindingConfig` in factory and handler

### `ShellyThingConfiguration` (POJO)

- **Location:** `internal/config/ShellyThingConfiguration.java`
- **Role:** Per-thing settings mapped from `thing-types.xml` `<config-description>`. Populated by OH framework via `getConfigAs()`.
- **Key fields:** `deviceIp`, `deviceAddress` (BLU MAC), `userId`, `password`, `updateInterval`, event flags (`eventsButton`, `eventsSwitch`, `eventsCoIoT`, …), `enableBluGateway`, `enableRangeExtender`

### `ShellyApiConfiguration` (immutable per-thing)

- **Location:** `internal/config/ShellyApiConfiguration.java`
- **Role:** Immutable per-thing snapshot passed to the API layer. Merges thing + runtime binding config. Only config object `Shelly1HttpApi` / `Shelly2ApiRpc` ever sees.
- **Construction (thing handler):** `new ShellyApiConfiguration(ShellyThingConfiguration, ShellyBindingRuntimeConfig, String realm, boolean gen2)`
- **Construction (discovery):** `new ShellyApiConfiguration(ShellyBindingRuntimeConfig, String realm, String deviceIp)`
- **Credential merge:** `thingConfig.userId/.password` non-blank → wins; else `bindingConfig.defaultUserId/Password`
- **Mutable exceptions (atomic types):** `realm` (`AtomicReference<String>`) set after device identification; `enableCoIOT` (`AtomicBoolean`) promoted by `checkVersion()`
- **Key getters:** `getDeviceApiUrl()`, `getEventCallbackUrl()`, `getWebSocketCallback()`, `getEnableCoIOT()`, `getRealm()`, `getUserId()`, `getBearer()`, `getBdAddr()` (BLU MAC, normalized), `getDeviceSocketAddress()`, `getDeviceHostAddress()`
- **Setters (mutable fields only):** `setRealm(String)`, `setEnableCoIOT(boolean)`, `setCredentials(String userId, String password)`

## Construction Flow (Factory Activate)

```java
// ShellyHandlerFactory @Activate:
ShellyBindingConfiguration rawConfig = ShellyBindingConfiguration.fromProperties(configProperties);
ShellyBindingRuntimeConfig runtimeConfig = new ShellyBindingRuntimeConfig(rawConfig, networkAddressService);
if (runtimeConfig.getLocalIP().isEmpty()) { throw ComponentException("no local IP"); }
bindingConfig = runtimeConfig.withHttpPort(httpPort);
```

## Construction Flow (mDNS Discovery @Activate / @Modified)

```java
ShellyBindingConfiguration rawConfig = ShellyBindingConfiguration.fromProperties(componentContext.getProperties());
bindingConfig = new ShellyBindingRuntimeConfig(rawConfig, networkAddressService);
```

`networkAddressService` is stored as a final field because `@Modified` needs it to rebuild the runtime config.

## Thread Safety

- `ShellyBindingConfiguration` — never shared; constructed and immediately converted to runtime config
- `ShellyBindingRuntimeConfig` — immutable; published via `volatile` write; safe to read from scheduler threads without synchronization
- `ShellyApiConfiguration` — immutable except `realm` and `enableCoIOT` which use `AtomicReference`/`AtomicBoolean`

## Test Coverage

| Test class | Covers |
|---|---|
| `ShellyBindingConfigurationTest` | POJO defaults, `fromProperties(Map)`, `fromProperties(Dict)`, `ShellyBindingRuntimeConfig` IP resolution, link-local filtering, `withHttpPort()` |
| `ShellyApiConfigurationTest` | Credential merging, URL construction, event flags, BLU address normalization, mutable fields |
