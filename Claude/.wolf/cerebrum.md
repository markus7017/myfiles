# Cerebrum

> OpenWolf's learning memory. Updated automatically as the AI learns from interactions.
> Do not edit manually unless correcting an error.
> Last updated: 2026-05-10

## User Preferences

<!-- How the user likes things done. Code style, tools, patterns, communication. -->

## Key Learnings

- **Project:** org.openhab.binding.shelly
- **Description:** openHAB binding integrating [Shelly devices](https://shelly.cloud) by Allterco.

## Key Learnings

- **Gen2 roller meter path**: Gen2 rollers (`isRoller=true, isGen2=true`) set `isEMeter=true` unconditionally. They go through `updateEMeters()`, NOT `updateAggregatedMeter()` (that path is Gen1-only: `isRoller && !isGen2`). Roller PM data comes from `Shelly2CoverStatus` via `updateRollerStatus()` — which writes power/total/voltage/current/pf but NOT frequency (no field in the DTO).
- **Frequency channel guard**: Use `emeter.frequency != null` (data-driven) rather than device-type flags like `!isEM50`. Both EM50 and rollers lack frequency in their DTOs → null → naturally excluded. The flag-based approach misses future device types.
- **`Shelly2CoverStatus.aenergy`**: Has a `byMinute` field (same `Shelly2Energy` type as switch status). Must be read in `updateRollerStatus()` to populate `emeter.lastMinuteW` → `lastPower1` channel. Was missing before.

## User Preferences

- **Never edit `shelly_de.properties`** — translations are managed through a separate process (external tool/workflow). Only `shelly.properties` (English) is edited directly. German and other locale files are updated outside of this workflow.
- **Correct build sequence**: always run `mvn spotless:apply` BEFORE `mvn install`, never skip it. Running spotless *after* edits but *before* the build is the required order; the build checks format compliance and will fail without it.

## Key Learnings

- **Gen3 bulb naming rule**: Name Gen3 bulb thing types with `shellyplusduobulb` / `shellypluscolorbulb` so `isGeneration2()` activates via the existing `startsWith("shellyplus")` check — no `GROUP_GEN3_BULB_THING_TYPES` needed.
- **Duo Bulb G3 actual component**: The real device uses **`cct:0`** (CCT component), NOT `light:0`.
  `Light.GetStatus` returns HTTP 404. Correct API: `CCT.GetStatus` / `CCT.Set` / `CCT.SetConfig`.
  DTO: `Shelly2CCTStatus` (peer of `Shelly2DeviceStatusLight`, includes `aenergy`/`apower`).
  Status result field: `@SerializedName("cct:0") Shelly2CCTStatus cct0`.
  Config result field: `@SerializedName("cct:0") Shelly2GetConfigLight cct0` (same structure).
- **Multicolor Bulb G3 (`shellypluscolorbulb`)**: uses `rgb:0` component — distinct from `rgbw:0` (RGBW2 LED strip).
  Profile: `isRGBBulb=true, isGen2=true`. API: `RGB.GetStatus` / `RGB.Set`.
  Handled by `Shelly2RGBStatus` DTO and `updateRGBBulbStatus()`.
- **Dual name map alias for Gen3 bulbs**: mDNS firmware broadcasts `shellyduobulbg3-AABBCC.local` (cannot change), but thing type id is `shellyplusduobulb`. Both must be in `THING_TYPE_BY_SERVICE_NAME`: firmware key + thing-type-id alias. The alias is required by `ShellyThingCreatorTest.getThingUIDReturnsThingTypeMatchingServiceName` which iterates all supported types and constructs `thingTypeId-DEVICE_ID` as the service name for a roundtrip check.
- **`setLightParms()` bug**: the original code fell through to `throw` even after a successful RGBW API call.
  Fixed to use `if/else if/else` so only one path executes.
- **`Shelly2RGBStatus` nesting**: must be a `static` inner class of `Shelly2DeviceStatusResult` (same level as `Shelly2RGBWStatus`), not of `Shelly2DeviceStatus` — otherwise the fully-qualified import path is wrong.
- **`getProfile()` throws**: private helper methods calling `getProfile()` must declare `throws ShellyApiException`.

## Do-Not-Repeat

<!-- Mistakes made and corrected. Each entry prevents the same mistake recurring. -->
<!-- Format: [YYYY-MM-DD] Description of what went wrong and what to do instead. -->

- [2026-05-28] Don't use `isEM50` as the only guard for frequency channel creation/update — Gen2 rollers also lack frequency. Use `emeter.frequency != null` everywhere; it covers all device types without requiring per-device flags.
- [2026-05-30] `Shelly2ApiRpc.getDeviceProfile()` had isCB set AFTER `fillRelaySettings`/`fillBreakerSettings`, so the CB detection never took effect. The correct order is: set `profile.isCB` first, then call the fill methods. This is now fixed in `initProfile()`.
- [2026-05-30] `THING_TYPE_SHELLY3EM` has ThingTypeUID id `"shellyem3"` (not `"shelly3em"`) — important for test construction with `new ThingTypeUID("shelly", id)`. Check the ShellyDevices constant definition before guessing the id string.
- [2026-05-30] `fillRollerFavorites()` accesses `dc.sys.uiData.cover` without null-checking `dc.sys.uiData` — tests using minimal JSON must include `"ui_data":{}` in sys or the method NPEs. `mapValue()` also requires non-null key, so cover config in test JSON must include `"in_mode"`.
- [2026-05-30] Spotless auto-removes imports that are only used in the removed/refactored code. Always run `mvn spotless:apply` after any significant refactoring that changes import usage.
- [2026-06-02] Duo Bulb G3: assumed `light:0` component and `Light.GetStatus` — **WRONG**. Actual component is `cct:0`; `Light.GetStatus` returns 404. Always verify component name from a real `Shelly.GetStatus` trace before coding API calls for new device types.
- [2026-06-02] Gen3 bulbs named `shellyduobulbg3`/`shellycolorblbg3` (firmware ID) — **WRONG thing type IDs**. Thing types must be named `shellyplusduobulb`/`shellypluscolorbulb` (with `shellyplus` prefix) so `isGeneration2()` works without a special-case group.

## Decision Log

<!-- Significant technical decisions with rationale. Why X was chosen over Y. -->