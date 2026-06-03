# Build & Tooling

## Maven Commands

```bash
# Full build with all checks
mvn clean install -pl :org.openhab.binding.shelly

# Fast iteration (skip tests, checks, markdownlint)
mvn clean install -pl :org.openhab.binding.shelly -DskipTests -DskipChecks -Dmarkdownlint.skip=true

# Run all tests
mvn test -pl :org.openhab.binding.shelly

# Run a single test class
mvn test -pl :org.openhab.binding.shelly -Dtest=ShellyBindingConfigurationTest

# Run multiple test classes
mvn test -pl :org.openhab.binding.shelly -Dtest="ShellyBindingConfigurationTest,ShellyApiConfigurationTest"

# Apply Spotless (Google Java Format) — run after any Java edits
mvn spotless:apply -pl :org.openhab.binding.shelly

# Build from repo root (for cross-module dependency check)
mvn clean install -pl :org.openhab.binding.shelly -am
```

Always run from the repo root (`/Users/mmichels/Dev/openhab-5.2/git/openhab-addons`), not the bundle directory.

## Formatting

- **Java:** Google Java Format via Spotless. Run `mvn spotless:apply` before committing. Spotless violations fail the build with `[ERROR] Run 'mvn spotless:apply' to fix`.
- **Markdown:** markdownlint-cli2 with `.github/markdownlint.yaml`. Violations fail `mvn clean install`. Common rule violated: `MD012` (multiple consecutive blank lines). Use `-Dmarkdownlint.skip=true` only during development.

## Test Classes

| Class | What it tests |
|---|---|
| `ShellyBindingConfigurationTest` | `ShellyBindingConfiguration` POJO + `ShellyBindingRuntimeConfig` |
| `ShellyApiConfigurationTest` | `ShellyApiConfiguration` URL construction, credential merge, event flags |
| `ShellyThingConfigurationTest` | `ShellyThingConfiguration` POJO getters |
| `ShellyDevicesTest` | Thing type ↔ device capability mapping |
| `ShellyDeviceProfileTest` | Device profile parsing (Gen1/Gen2 JSON) |
| `ShellyThingCreatorTest` | Model string → `ThingTypeUID` mapping (181 parameterized cases) |
| `ShellyMDNSDiscoveryParticipantTest` | Service name validation |
| `ShellyUtilsTest` | Utility method coverage |

Total: ~360 tests.

## Common Pitfalls

- **Stale `.class` files:** If you see `Invalid class file` errors, run `mvn clean test` instead of `mvn test`.
- **Spotless auto-modifies files:** After `spotless:apply`, re-read any file before editing it — the Edit tool will fail if the file changed since last read.
- **`markdownlint` MD012:** Extra blank lines around `---` section dividers in `.md` files are a common cause. One blank line before and after is the maximum.
- **`@NonNullByDefault` + `@Nullable`:** Forgetting `@Nullable` on a parameter that the Eclipse null-checker infers as `@NonNull` causes a build warning that blocks CI.
