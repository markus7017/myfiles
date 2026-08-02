# MQTT Binding (org.openhab.binding.mqtt) — DEV / Beta Build Guide

This binding implements a generic MQTT Thing/Channel binding on top of the MQTT transport bundle.

Author of this build: Markus Michels (markus7017)

Please let me know if a build doesn't install correctly, or if this doc can be improved.

> **DISCLAIMER:** Installing a SNAPSHOT or DEV build may impact the stability of your installation and can cause backward-compatibility issues. Do a full backup before updating.

## Contents

1. [Supported openHAB Versions & Downloads](#1-supported-openhab-versions--downloads)
2. [Installing a DEV Build](#2-installing-a-dev-build)
3. [Updating an Existing DEV Build](#3-updating-an-existing-dev-build)
4. [Troubleshooting the Install](#4-troubleshooting-the-install)
5. [Logging & Debugging](#5-logging--debugging)
6. [Reporting a Problem / Requesting a Feature](#6-reporting-a-problem--requesting-a-feature)

---

## 1. Supported openHAB Versions & Downloads

- **Release distro** — the stable binding version shipped with your openHAB release. Install via the UI as usual.
- **Official SNAPSHOT / milestone build** — built by the openHAB project itself, published [here](https://openhab.jfrog.io/artifactory/libs-pullrequest-local/org/openhab/addons/bundles/org.openhab.binding.mqtt/). Newer than the release, but only available once a PR is open and CI has run.
- **DEV build** (this guide) — my own latest and archived builds, in the [myfiles repo](https://github.com/markus7017/myfiles/tree/master/mqtt).

DEV builds can **not** be installed from the openHAB UI — see [Installing a DEV Build](#2-installing-a-dev-build). Make sure the release version of the binding is uninstalled first.

| openHAB version | Binding DEV build | Download |
|---|---|---|
| 5.1.x – 5.3.x | 5.3.0-SNAPSHOT | [jar](https://github.com/markus7017/myfiles/blob/master/mqtt/org.openhab.binding.mqtt-5.3.0-SNAPSHOT-fixrollershutter.jar) — fix for [#21210](https://github.com/openhab/openhab-addons/issues/21210): Rollershutter `formatBeforePublish` was ignored |

> **Downloading with curl/wget:** append `?raw=true` to the URL, otherwise you'll download the GitHub HTML page instead of the binary jar.

## 2. Installing a DEV Build

First, uninstall the release MQTT binding from the UI (Settings → Add-ons) if it's installed.

### 2.1 Recommended: `bundle:install`

This installs the jar as a plain OSGi bundle, independent of the UI/addons-folder auto-deploy mechanism — no need to stop openHAB or watch log timing.

1. Download the jar from the link above (remember `?raw=true` for curl/wget).
2. Open the OH console (`openhab-cli console`).
3. Install the bundle: `bundle:install -s file:///path/to/org.openhab.binding.mqtt-x.y.z-SNAPSHOT-<build>.jar`
   The `-s` flag starts the bundle immediately; note the bundle ID printed in the output.
4. Verify: `bundle:list | grep MQTT` should show `Active`.

### 2.2 Alternative: copy to addons folder

1. Download the jar as above.
2. Stop OH.
3. Copy the jar into OH's `addons` folder.
4. Start OH.

## 3. Updating an Existing DEV Build

Your MQTT Things and channel configuration are unaffected by binding updates — no need to delete/re-discover anything.

1. If installed via `bundle:install`: `bundle:list | grep MQTT` to get the bundle ID, then `bundle:uninstall <id>`.
   If installed via addons folder: delete the old jar from `addons/` and wait until OH unloads the binding.
2. Install the new jar using either method from [section 2](#2-installing-a-dev-build).

## 4. Troubleshooting the Install

If the binding doesn't show up, or shows a status other than `Active`, there may be leftovers from a previous install:

1. Stop OH.
2. `openhab-cli clean-cache`
3. Start OH and wait until it's fully initialized.
4. Install the jar again ([section 2](#2-installing-a-dev-build)).
5. `bundle:list | grep MQTT` — confirm `Active`.

## 5. Logging & Debugging

1. Open the OH console: `openhab-cli console`
2. `log:set DEBUG org.openhab.binding.mqtt`
3. Reproduce the problem (e.g. send a command to a channel and check the outgoing MQTT payload).
4. Set the level back afterwards: `log:set INFO org.openhab.binding.mqtt`

## 6. Reporting a Problem / Requesting a Feature

For a bug report, please open a new issue at <https://github.com/openhab/openhab-addons/issues>, prefix the title with `[mqtt]`, and include:

- The channel configuration involved (`formatBeforePublish`, transformations, etc.).
- The MQTT payload you expected vs. what was actually published.
- openHAB version and whether the DEV build fixes it.
