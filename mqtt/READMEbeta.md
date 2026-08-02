# MQTT Binding (org.openhab.binding.mqtt) — DEV / Beta Build Guide

This binding implements a generic MQTT Thing/Channel binding on top of the MQTT transport bundle.

Author of this build: Markus Michels (markus7017)

Please let me know if a build doesn't install correctly, or if this doc can be improved.

> **DISCLAIMER:** Installing a SNAPSHOT or DEV build may impact the stability of your installation and can cause backward-compatibility issues. Do a full backup before updating.

## Contents

1. [What's in this build](#1-whats-in-this-build)
2. [Supported openHAB Versions & Downloads](#2-supported-openhab-versions--downloads)
3. [Installing a DEV Build](#3-installing-a-dev-build)
4. [Updating an Existing DEV Build](#4-updating-an-existing-dev-build)
5. [Troubleshooting the Install](#5-troubleshooting-the-install)
6. [Logging & Debugging](#6-logging--debugging)
7. [Reporting a Problem / Requesting a Feature](#7-reporting-a-problem--requesting-a-feature)

---

## 1. What's in this build

Fix for [#21210](https://github.com/openhab/openhab-addons/issues/21210) / [#20288](https://github.com/openhab/openhab-addons/issues/20288): the Rollershutter channel's `formatBeforePublish` setting was silently ignored for UP/DOWN/STOP commands and percent values — the pattern is now applied consistently, matching the other channel types (Number, Percentage, On/Off, ...).

Branch: [mqtt_fix_rollershutter_formatbeforepublish](https://github.com/markus7017/openhab-addons/tree/mqtt_fix_rollershutter_formatbeforepublish)

## 2. Supported openHAB Versions & Downloads

- **Release distro** — the stable binding version shipped with your openHAB release. Install via the UI as usual.
- **Official SNAPSHOT / milestone build** — built by the openHAB project itself, published [here](https://openhab.jfrog.io/artifactory/libs-pullrequest-local/org/openhab/addons/bundles/org.openhab.binding.mqtt/). Newer than the release, but doesn't contain this fix until a PR is merged.
- **DEV build** (this guide) — this specific fix, built from the branch above.

DEV builds can **not** be installed from the openHAB UI — see [Installing a DEV Build](#3-installing-a-dev-build). Make sure the release version of the binding is uninstalled first.

| openHAB version | Binding DEV build | Download |
|---|---|---|
| 5.1.x – 5.3.x | 5.3.0-SNAPSHOT | [jar](https://github.com/markus7017/myfiles/blob/master/mqtt/org.openhab.binding.mqtt-5.3.0-SNAPSHOT.jar) |

> **Downloading with curl/wget:** append `?raw=true` to the URL, otherwise you'll download the GitHub HTML page instead of the binary jar.

## 3. Installing a DEV Build

First, uninstall the release MQTT binding from the UI (Settings → Add-ons) if it's installed.

### 3.1 Recommended: `bundle:install`

This installs the jar as a plain OSGi bundle, independent of the UI/addons-folder auto-deploy mechanism — no need to stop openHAB or watch log timing.

1. Download the jar from the link above (remember `?raw=true` for curl/wget).
2. Open the OH console (`openhab-cli console`).
3. Install the bundle: `bundle:install -s file:///path/to/org.openhab.binding.mqtt-5.3.0-SNAPSHOT.jar`
   The `-s` flag starts the bundle immediately; note the bundle ID printed in the output.
4. Verify: `bundle:list | grep MQTT` should show `Active`.

### 3.2 Alternative: copy to addons folder

1. Download the jar as above.
2. Stop OH.
3. Copy `org.openhab.binding.mqtt-5.3.0-SNAPSHOT.jar` into OH's `addons` folder.
4. Start OH.

## 4. Updating an Existing DEV Build

Your MQTT Things and channel configuration are unaffected by this fix — no need to delete/re-discover anything.

1. If installed via `bundle:install`: `bundle:list | grep MQTT` to get the bundle ID, then `bundle:uninstall <id>`.
   If installed via addons folder: delete the old jar from `addons/` and wait until OH unloads the binding.
2. Install the new jar using either method from [section 3](#3-installing-a-dev-build).

## 5. Troubleshooting the Install

If the binding doesn't show up, or shows a status other than `Active`, there may be leftovers from a previous install:

1. Stop OH.
2. `openhab-cli clean-cache`
3. Start OH and wait until it's fully initialized.
4. Install the jar again ([section 3](#3-installing-a-dev-build)).
5. `bundle:list | grep MQTT` — confirm `Active`.

## 6. Logging & Debugging

1. Open the OH console: `openhab-cli console`
2. `log:set DEBUG org.openhab.binding.mqtt`
3. Reproduce the problem (e.g. send a command to the Rollershutter channel and check the outgoing MQTT payload with `formatBeforePublish` set).
4. Set the level back afterwards: `log:set INFO org.openhab.binding.mqtt`

## 7. Reporting a Problem / Requesting a Feature

For a bug report specific to this fix, please comment on [#21210](https://github.com/openhab/openhab-addons/issues/21210) with:

- The `formatBeforePublish` pattern you configured.
- The MQTT payload you expected vs. what was actually published.
- openHAB version and whether the DEV build fixes it.

For anything else, open a new issue at <https://github.com/openhab/openhab-addons/issues>, prefix the title with `[mqtt]`.
