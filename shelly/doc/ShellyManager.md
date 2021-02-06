# Shelly Manager

The Shelly Manager is a small extension to the binding, which provides some low level information on the Shelly Devices, but also provides some functions to manage the devices.

To open the Shelly Manage launch the following URL in your browser
- http://&lt;openHAB IP address&gt;:8080/shelly/manager or
- http://&lt;openHAB IP address&gt;:80443/shelly/manager

Mybe you need to change the port matching your setup.

## Overview

Once the Shelly Manager is opened an overview of all Shelly devices added as a Thing are displayed. 
Things which are not discovered or still site in the Inbox will not be displayed.

You'll see a bunch of technical details, which are not available as channels or in the Thing properties.
This includes information on the device communication stability. 
The statistic gives you are good overview if device communication is stable or a relevant number of timeouts need to be recovered.
In this case you should verify the WiFi coverage or other options to improve stability.

The following information is available
|Column              |Description                                                                      |
|--------------------|---------------------------------------------------------------------------------|
|S                   |Thing Status - hover over the icon to see more details                           |
|Name                |Device name - hover over the name to get more details                            |
|WiFi Network        |SSID of the connected WiFi network                                               |
|WiFi Signal         |WiFi signal strength, 0=none, 4=very good                                        |
|Last Heartbeat      |Last time a response or an event was received from the device                    |
|Action              |Drop down with some actions, see below                                           |
|Firmware            |Current firmware release                                                         |
|Update avail        |yes indicates that a firmware update is available                                |
|Version             |List available firmware versions: prod, beta or archived                         |
|Uptime              |Number of seconds since last device restart                                      |
|Update Period       |Timeout for device refresh                                                       |
|Alarms              |Number of alarms received from device                                            |
|Last Alarm          |Type of last alarm (refer README.md for details)                                 |
|Unexpected Restarts |Number of unexpected restarts, could indicate a firmware instability             |
|Timeout Errors      |Number of API timeouts, could be an indication for an unstable connection        |
|Timeouts recovered  |The binding does retries and timeouts and counts successful recoveries           |
|Remaining Watchdog  |Number of seconds before device goes offline, each activity restarts the watchdog|
|Battery Level       |Remaining capacity of the battery                                                |
|Device internal Temp|Internal device temperature. Max is depending on device type.                    |

The column S and Name display more information when hovering with the mouse over the entries.   

## Actions

The Shelly Manager provides the following actions when the Thing is ONLINE:

|Action |Description                                                                       |
|-------|----------------------------------------------------------------------------------|
|Restart|Restart the device and reconnect to WiFi                                          |
|Protect|Use binding's default credentials to protect device access with user and password |

## Firmware Upgrade

The Shelly Manager simplifies the firmware upgrade.
You could select between different versions using the drop down list on the overview page.
Shelly Manager integrates 2 sources
- Allterco official releases: production and beta release (like in the device UI)
- Older firmware release from the firmware archive - this service is provided by 

All firmware releases are combined to the selection list.
Click on the version you want to install and Shelly Manager will generate the requested URL to trigger the firmware upgrade.
This URL is displayed on the following page.
The upgrade starts if you click "Perform Update".

The device will download the firmware file, installs the update and restarts the device.
Depending on the device type this takes between 10 and 60 seconds.
The binding will automatically recover the device with the next status check (default: every 60 seconds).

