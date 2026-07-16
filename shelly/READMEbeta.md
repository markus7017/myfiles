# Shelly Binding (org.openhab.binding.shelly) — DEV / Beta Build Guide

This binding implements control for the Shelly series of devices: sending commands, reading device status and sensor data.

Author: Markus Michels (markus7017)
Community thread: <https://community.openhab.org/t/shelly-binding/56862/2486?u=markus7017> — questions, ideas and comments are welcome.

Please let me know if a build doesn't install correctly, or if this doc can be improved.

> **DISCLAIMER:** Installing a SNAPSHOT or DEV build may impact the stability of your installation and can cause backward-compatibility issues. Do a full backup before updating.

## Contents

1. [Supported openHAB Versions & Downloads](#1-supported-openhab-versions--downloads)
2. [Device Firmware Requirements](#2-device-firmware-requirements)
3. [Installing a DEV Build](#3-installing-a-dev-build)
4. [Updating an Existing DEV Build](#4-updating-an-existing-dev-build)
5. [Troubleshooting the Install](#5-troubleshooting-the-install)
6. [Logging & Debugging](#6-logging--debugging)
7. [Reporting a Problem / Requesting a Feature](#7-reporting-a-problem--requesting-a-feature)
8. [Supporting New / Untested Devices](#8-supporting-new--untested-devices)
9. [Gen1: CoIoT Required, Event URLs Deprecated](#9-gen1-coiot-required-event-urls-deprecated)

---

## 1. Supported openHAB Versions & Downloads

Three tiers of builds exist, in increasing order of freshness:

- **Release distro** — the stable binding version shipped with your openHAB release. Install via the UI as usual.
- **Official SNAPSHOT / milestone build** — built by the openHAB project itself, published [here](https://openhab.jfrog.io/artifactory/libs-pullrequest-local/org/openhab/addons/bundles/org.openhab.binding.shelly/). Newer than the release, but always behind the DEV build below.
- **DEV build** (this guide) — my own latest and archived builds, in the [myfiles repo](https://github.com/markus7017/myfiles/tree/master/shelly).

DEV builds can **not** be installed from the openHAB UI — see [Installing a DEV Build](#3-installing-a-dev-build). Make sure the release version of the binding is uninstalled first.

There's no strict dependency on the exact openHAB base version — e.g. binding `4.3-SNAPSHOT` runs fine on openHAB `4.2`. Very old openHAB versions (2.5, 3.x) are not supported by recent DEV builds.

| openHAB version | Binding DEV build | Download |
|---|---|---|
| 5.1.x | 5.1.0-SNAPSHOT | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-5.1.0-SNAPSHOT.jar) |
| 5.0.x | Use the version shipped with official 5.0, or the 5.1 DEV build above (also works on 5.0) | — |
| 4.3.6+ | 4.3.6-SNAPSHOT | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-4.3.6-SNAPSHOT.jar) |
| 4.3.3 – 4.3.5 | No longer supported — use the 4.3.6 DEV build above | — |
| 4.3.0 – 4.3.2 | No longer supported, archived build no longer available | — |
| 4.2.x | No longer supported | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-4.2.0-SNAPSHOT.jar) |
| 4.1.x | No longer supported | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-4.1.0-SNAPSHOT.jar) |
| 4.0.x | No longer supported | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-4.0.5-SNAPSHOT.jar) |
| 3.4.x | No longer supported | [jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-3.4.5-SNAPSHOT.jar) |

> **Downloading with curl/wget:** append `?raw=true` to the URL, otherwise you'll download the GitHub HTML page instead of the binary jar.

## 2. Device Firmware Requirements

- **Gen1:** firmware 1.9.2 or newer — use the device UI or Shelly Manager to update.
- **Gen2 / Gen3 / Gen4:** firmware 1.33.0 or newer.

## 3. Installing a DEV Build

First, uninstall the release Shelly binding from the UI (Settings → Add-ons) if it's installed.

### 3.1 Recommended: `bundle:install`

This installs the jar as a plain OSGi bundle, independent of the UI/addons-folder auto-deploy mechanism — no need to stop openHAB or watch log timing.

1. Download the jar from the [myfiles repo](https://github.com/markus7017/myfiles/tree/master/shelly), e.g. `org.openhab.binding.shelly-5.2.0-SNAPSHOT.jar` (remember `?raw=true` for curl/wget).
2. If you have Gen1 devices, open the OH console (`openhab-cli console`) and install the CoAP transport feature once: `feature:install openhab-transport-coap`.
3. Install the bundle: `bundle:install -s file:///path/to/org.openhab.binding.shelly-x.y.z-SNAPSHOT.jar`
   The `-s` flag starts the bundle immediately; note the bundle ID printed in the output.
4. Verify: `bundle:list | grep Shelly` should show `Active`.
5. Run discovery (Settings → Add-ons → Shelly Binding → scan, or add Things manually).

### 3.2 Alternative: `feature:install` + copy to addons folder

Use this if you can't reach the console for `bundle:install`, or prefer the classic hot-deploy mechanism.

1. Download the jar as above.
2. Open the OH console, run `feature:install openhab-transport-coap`.
3. Stop OH.
4. Copy `org.openhab.binding.shelly-x.y.z-SNAPSHOT.jar` into OH's `addons` folder.
5. Start OH, run discovery.

Either method should leave `bundle:list` looking similar to this:

```text
283 │ Active │ 80 │ 0.3.0.v20220506-1020 │ EdDSA-Java
284 │ Active │ 80 │ 2.7.4                │ Californium (Cf) Core
285 │ Active │ 80 │ 2.7.4                │ Californium (Cf) Element Connector
286 │ Active │ 80 │ 2.7.4                │ Californium (Cf) OSGi
287 │ Active │ 80 │ 2.7.4                │ Scandium (Sc) Core
282 │ Active │ 80 │ 5.2.0.202601061653   │ openHAB Add-ons :: Bundles :: Shelly Binding
```

## 4. Updating an Existing DEV Build

Channel definitions can change with any alpha/beta release. It's recommended to **delete all Shelly Things before updating** and clean out the JSON DB entries:

1. Remove all Shelly Things (UI: no worries, they get re-discovered; also remove from `.things` files if used).
2. If installed via `bundle:install`: `bundle:list | grep Shelly` to get the bundle ID, then `bundle:uninstall <id>`.
   If installed via addons folder: delete the old jar from `addons/` and wait until OH unloads the binding (watch the log), then confirm with `bundle:list | grep Shelly` that it's gone.
3. Install the new jar using either method from [section 3](#3-installing-a-dev-build).
4. Re-discover Things — channel/item linkage is restored automatically.
5. Verify the linked channels; new channels may have appeared, and in rare cases channels get renamed for consistency.

After re-adding Things, review the thing configuration if you had Range Extender mode, BLU devices, or the LoRa add-on enabled. If you no longer want BLU support, go to the device's web UI and delete any script whose name starts with `oh-`.

## 5. Troubleshooting the Install

If the binding doesn't show up, or shows a status other than `Active`, there may be leftovers from a previous install:

1. Stop OH.
2. `openhab-cli clean-cache`
3. Start OH and wait until it's fully initialized.
4. Open the OH console, run `feature:install openhab-transport-coap`.
5. Install the jar again ([section 3](#3-installing-a-dev-build)).
6. `bundle:list | grep Shelly` — confirm `Active`.

## 6. Logging & Debugging

### 6.1 Enable DEBUG or TRACE logging

1. Open the OH console: `openhab-cli console`
2. Set the binding's log level:
   - `log:set DEBUG org.openhab.binding.shelly`
   - `log:set TRACE org.openhab.binding.shelly` for maximum detail (needed for raw device payloads)
3. Reproduce the problem, or just wait for it to occur.
4. Set the level back afterwards if you don't want the extra volume permanently: `log:set INFO org.openhab.binding.shelly`

### 6.2 Route Shelly logging to its own file

By default everything lands in `openhab.log`, mixed with every other binding. To split Shelly's output into its own file, add a dedicated logger + appender to `org.ops4j.pax.logging.cfg`.

**File location**, depending on install type:

- openHABian / APT / DEB package: `/var/lib/openhab/etc/org.ops4j.pax.logging.cfg`
- Manual / portable install: `<openhab-install-dir>/userdata/etc/org.ops4j.pax.logging.cfg`
- Docker: inside the mounted `userdata` volume, at `etc/org.ops4j.pax.logging.cfg`

Append:

```properties
# Dedicated Shelly binding log
log4j2.logger.shelly.name = org.openhab.binding.shelly
log4j2.logger.shelly.level = DEBUG
log4j2.logger.shelly.additivity = false
log4j2.logger.shelly.appenderRef.ShellyOut.ref = ShellyOut

log4j2.appender.shelly.name = ShellyOut
log4j2.appender.shelly.type = RollingRandomAccessFile
log4j2.appender.shelly.fileName = ${openhab.logdir}/shelly.log
log4j2.appender.shelly.filePattern = ${openhab.logdir}/shelly.log.%i
log4j2.appender.shelly.layout.type = PatternLayout
log4j2.appender.shelly.layout.pattern = %d{yyyy-MM-dd HH:mm:ss.SSS} [%-5.5p] [%-36.36c] - %m%n
log4j2.appender.shelly.policies.type = Policies
log4j2.appender.shelly.policies.size.type = SizeBasedTriggeringPolicy
log4j2.appender.shelly.policies.size.size = 16MB
log4j2.appender.shelly.strategy.type = DefaultRolloverStrategy
log4j2.appender.shelly.strategy.max = 7
```

Notes:

- `additivity = false` keeps Shelly messages out of `openhab.log` entirely; set it to `true` instead if you want them in both places.
- Change `level = DEBUG` to `TRACE` for maximum detail, same as the console command.
- The config is usually picked up within a few seconds without a restart; restart openHAB if it isn't.
- Result: a separate `shelly.log` (with automatic rotation) next to `openhab.log` in your log directory.

## 7. Reporting a Problem / Requesting a Feature

Check the [community thread](https://community.openhab.org/t/shelly-binding/) first — someone may have already solved it.

For a bug report:

1. Reproduce the problem with DEBUG or TRACE logging enabled ([section 6](#6-logging--debugging)).
2. Save the log (or the dedicated `shelly.log` if you set that up).
3. Trim it down to the relevant lines.
4. Anonymize anything sensitive (device passwords, SSIDs, etc).
5. Open a new issue: <https://github.com/openhab/openhab-addons/issues>
   Prefix the title with `[shelly]`, use a specific title and an exact description.
6. Optional but appreciated: send me a PM with a heads-up and the issue link.

For a feature request, same issue tracker and `[shelly]` prefix — post the idea to the community thread first so everyone can weigh in, then open the issue.

## 8. Supporting New / Untested Devices

Useful info to gather for a new/untested device:

**Gen1 devices** — open in a browser:

- `http://<device-ip>/settings`
- `http://<device-ip>/status`

**Gen2 / Gen3 / Gen4 devices** — open in a browser:

- `http://<device-ip>/rpc/Shelly.GetConfig`
- `http://<device-ip>/rpc/Shelly.GetStatus`

**BLU devices** — there's no way to query these directly; use the Shelly App or the Shelly BLE Debug App instead.

**CoIoT support (Gen1)** — to get the CoIoT descriptor:

1. Enable CoIoT events in the thing configuration.
2. Open the thing properties (`Show Properties`).
3. Copy the `coapDescr` property.

If you own a device that's not yet supported, send me a PM and we can work on adding it together. See the main `README.md` for the current list of supported devices.

## 9. Gen1: CoIoT Required, Event URLs Deprecated

> **Deprecation notice:** using device-side "Event URLs" / "Action URLs" (the device pushing HTTP callbacks directly to openHAB) as the update mechanism for Gen1 devices is deprecated in the binding and will be removed in a future release. Gen1 devices must be switched to **CoIoT (CoAP)** for real-time push updates instead.

You have two ways to get CoIoT traffic from the device to openHAB, depending on your setup.

### 9.1 Option 1: CoIoT unicast (device WebUI)

Use this for a "normal" (non-Docker, or Docker with host networking) openHAB install where multicast already works, or where you want to avoid multicast entirely.

1. Open the device's WebUI: `http://<device-ip>`
2. Go to **Internet & Security → COIOT**.
3. Set **CoIoT peer** to `<openHAB-ip>:5683` (unicast directly to your openHAB instance), instead of leaving it on the default multicast address `224.0.1.187:5683`.
4. Save — the device applies the setting immediately (some firmware versions reboot the device).
5. In the openHAB Thing configuration, make sure CoIoT/CoAP events are enabled, then verify: enable TRACE logging ([section 6.1](#61-enable-debug-or-trace-logging)) and confirm `CoIoT` status updates arrive after triggering the device.

Repeat for each Gen1 device — the peer setting is per-device.

### 9.2 Option 2: Make sure your Docker container can receive CoIoT traffic

CoIoT normally relies on multicast, which typically does **not** reach a container running in Docker's default bridge network. Pick one of the two fixes below.

**2a. Give the container its own LAN IP with `macvlan` (recommended — keeps multicast working for CoIoT and other bindings)**

1. Identify your Docker host's LAN, e.g. `192.168.20.0/24`, gateway `192.168.20.1`, host IP `192.168.20.2`.
2. Find the host's physical network interface (`ip a` or `ifconfig`), e.g. `eth0` (`ovs_eth0` on Synology).
3. Create the macvlan network, picking an unused IP for the container (e.g. `192.168.20.30`):

   ```bash
   docker network create -d macvlan \
     --subnet=192.168.20.0/24 \
     --gateway=192.168.20.1 \
     -o parent=eth0 vlan120
   ```

4. Run (or recreate) the openHAB container attached to that network with its own IP:

   ```bash
   docker run \
     --name openhab \
     --net=vlan120 \
     --ip=192.168.20.30 \
     --dns=8.8.8.8 \
     -v /path/to/conf:/openhab/conf \
     -v /path/to/userdata:/openhab/userdata \
     -v /path/to/addons:/openhab/addons \
     --restart=always \
     -d openhab/openhab:<tag>
   ```

   The `--dns` option is required if your DNS server is the Docker host itself — a container in macvlan mode cannot reach the host directly.
5. The container now has a real LAN IP (`192.168.20.30`) and receives multicast normally, including CoIoT — no per-device unicast configuration needed.

**2b. Simpler alternative: keep bridge networking, use CoIoT unicast + published port**

If you don't want to reconfigure your Docker network:

1. Publish the CoIoT UDP port in your `docker-compose.yml` (or `-p` flag): `"5683:5683/udp"`.
2. Restart the container.
3. On each device, configure **CoIoT unicast** pointing at the Docker host's IP:5683, following [Option 1](#91-option-1-coiot-unicast-device-webui) — do **not** leave it on multicast, since bridge mode won't deliver multicast into the container.
4. Verify with TRACE logging as in Option 1, step 5.
