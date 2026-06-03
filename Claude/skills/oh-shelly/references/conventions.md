# Coding Conventions

See also: `doc/DEVELOPER.md` § "Conventions" and § "Design Principles".

## Null Safety

- `@NonNullByDefault` applies **package-wide** via `package-info.java` in every package.
- Fields that can be null must be annotated `@Nullable`.
- DTO fields use boxed types (`Boolean`, `Double`, `Integer`) so absent JSON fields deserialize to `null`.
- Never compare boxed DTO fields directly — always use `ShellyUtils.getBool()`, `getDouble()`, `getString()`.

## Immutability

- **Runtime configs** (`ShellyApiConfiguration`, `ShellyBindingRuntimeConfig`): `private final` fields, getters only. Mutation returns a new instance via wither methods.
- **POJO configs** (`ShellyBindingConfiguration`, `ShellyThingConfiguration`): mutable, populated by the OH framework. Never stored as long-lived shared state.
- `ShellyApiConfiguration` has two intentional exceptions: `realm` and `enableCoIOT` use `AtomicReference`/`AtomicBoolean` because their values are not known at construction time.

## Exception Handling

- All API errors wrap to `ShellyApiException`.
- Handlers catch at the `refreshStatus()` / `handleCommand()` boundary and call `handleApiException()`, which updates thing status and schedules retries.
- Never swallow exceptions silently inside the API layer.

## Channel Updates

- Always go through `handler.updateChannel(group, channel, state)`, not `updateState()` directly.
- This routes through `ShellyChannelCache` which deduplicates unchanged values.

## Logging

- Use `thingName` as the log prefix in all messages inside handlers.
- API layer uses the realm from `ShellyApiConfiguration.getRealm()` as the prefix.
- Prefer `logger.isDebugEnabled()` guard for expensive string construction.

## Configuration Objects

- Thing configuration: `getConfigAs(ShellyThingConfiguration.class)` in `handleConfigurationUpdate()` / `initializeThingConfig()`.
- Never read thing config properties by string key — always use the typed POJO.

## Adding a New Device

Cheat sheet from `doc/DEVELOPER.md`:

1. Add constants in `ShellyBindingConstants.java`
2. Add entry in `ShellyDevices.java` (thing-type group, capabilities)
3. Add `ThingTypeUID` mapping in `ShellyThingCreator.java`
4. Create `thing/shellyXxx.xml` (copy nearest equivalent)
5. Add i18n strings in `shelly.properties`
6. Add two test cases in `ShellyThingCreatorTest` (exact model string + all-caps variant)

## Adding a New Channel

1. Constant in `ShellyBindingConstants.java`
2. Channel definition in `ShellyChannelDefinitions.java`
3. Channel entry in `device.xml`
4. i18n entry in `shelly.properties`
5. State logic in `ShellyComponents.java`

## Adding a Binding-Wide Config Option

1. Add field + constant to `ShellyBindingConfiguration.java`
2. Handle it in `fromProperties(Map)` switch statement
3. Add getter
4. Add field to `ShellyBindingRuntimeConfig` constructor (copy from `config`) and getter
5. Add entry in `binding.xml` `<config-description>`
6. Test in `ShellyBindingConfigurationTest`

## Test Patterns

- Config tests: `src/test/…/config/` — use `ShellyThingConfiguration` via reflection (`setField()`) since OH framework normally populates it.
- `ShellyBindingRuntimeConfig` test helpers: construct via `ShellyBindingConfiguration.fromProperties(Map.of(CONFIG_LOCAL_IP, "…"))` + `new ShellyBindingRuntimeConfig(raw, nullNas())`.
- No mocking of the database or HTTP layer in unit tests — config tests are pure unit tests with no I/O.
