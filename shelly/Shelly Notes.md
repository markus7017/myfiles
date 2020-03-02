# General Notes on Shelly Devices & API

## Device Types

| Device ID | Description |
|-------------|-----------|
||Shelly 1|
|SHSW-PM|Shelly 1PM|
|SHSW-21|Shelly 2|
|SHSW-25|Shelly 2.5|
|SHPLG-S|Shelly Plug-S
|SHEM|Shelly EM|
|SHEM-3|Shelly EM3|
|||
|||
|SHBLB-1|Shelly Bulb|
|SHDM-1|Shelly Dimmer|
|SHBDUO-1|Shelly Duo|
||Shelly RGBW2|
||Shelly HT|
||Shelly Flood|
||Shelly Smoke|

## REST API

### /settings

| Device    | FW Version | Setting                   | Description                           |
|-----------|------------|---------------------------|---------------------------------------|
| General   | 1.6-rc4    | factory_reset_from_switch | When set to 1 the device doesn't reset when the butten/switch is pressed 5 times. You need to reset the device using the App. |

### /status

| Device    |FW Version  | Status value              | Description                           |
|-----------|------------|---------------------------|---------------------------------------|
| General   |            |                           |                                       |
