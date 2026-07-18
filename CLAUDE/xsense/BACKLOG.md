# X-Sense Binding — Backlog

Future work and open verification items, tracked here until an upstream PR/repo exists and this can
move to GitHub issues.

## Planned phases

- **MQTT/WSS live updates**: subscribe to AWS IoT device shadows over MQTT/WSS instead of REST
  polling only. Reuse the existing `updateFromInventory(...)` entry points on each handler level
  rather than adding a parallel state-update path.
- **WiFi-direct devices** (`*-WX` models): these bypass the SBS50 base station and talk to the cloud
  directly; current handler/discovery model assumes a station parent.
- **Alarm history channels**: expose historical alarm events, not just current status.
- **Thermo-hygrometer on-demand reporting**: verify/implement `2nd_apptempdata`-style on-demand
  refresh for STH51 if it doesn't already flow through passively.
- **Keypad panic-button trigger channel**: needs the MQTT/WSS phase (event, not state).
- **Strobe light command wiring** (`control#light` on SSL51): channel is declared but not wired;
  needs the MQTT/WSS phase or a verified shadow write.
- **Cameras**: evaluate whether they fit the existing thing model or need their own bridge/thing
  types.
- **Local API**: revisit if X-Sense ever exposes one; none exists today (cloud-only).

## Out of scope

- **Device administration** (e.g. keypad key-code CRUD via bizCodes 407001–407005): the binding's
  job is exposing sensors and control functions (mute, arm/disarm) that a UI or rule can act on,
  not account/device management tasks that belong in the vendor app.

## Verification items (need a live account / real hardware)

- Confirm bizCode 102007 and 103007 payload shapes against a real account; capture JSON for
  additional DTO tests.
- Verify `batInfo` (battery) scale semantics against real hardware readings.
- Verify whether STH (thermo-hygrometer) data flows without an explicit `2nd_apptempdata` request,
  or whether that request needs to be sent explicitly.
- **Arm/disarm via shadow REST** (`security#safeMode` command): the binding posts the appMode
  desired state to `https://{mqttRegion}.x-sense-iot.com/things/SBS50{stationSn}/shadow?name=2nd_appmode`
  with SigV4-signed headers, mirroring the HA integration. Unverified against a live account — the
  IAM policy of the temporary credentials (bizCode 101003) may only allow MQTT publish. A persistent
  403 on this call is the fallback signal: defer the command path to the MQTT/WSS phase.
- Verify safeMode wire values ("Disarmed"/"Home"/"Away") in a real 103007 station payload;
  `XSenseSafeMode` is the single point of change if the casing differs.
- Verify the shadow thing name (`SBS50` + station SN) and that the Cognito SRP user id is accepted
  as `userId` in the appMode payload.
- Verify discovery and inventory payloads of the new security models (SAL51/SAL100, SDA51,
  SMA51/SMA11, SDS0A/SES01, SMS0A, SSL51, SKP0A); capture JSON for DTO tests and confirm the data
  points (alarm, contact, motion, armed) once MQTT shadows are read.

## Known, accepted tradeoffs

- **XSense Manager has no authentication** (`/xsense/manager`) — same precedent as ShellyManager in
  this codebase. Worth flagging explicitly in the PR/announcement so it's a conscious tradeoff, not
  a surprise to reviewers.
- **XSense Manager scope is deliberately narrow**: overview + rescan/reconnect only. Further actions
  (e.g. station reboot) are deferred to the MQTT/WSS phase, once there's a live channel to act on
  rather than just REST polling.
