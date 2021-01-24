# Shelly Manager

The Shelly Manager is a small extension to the binding, which provides some low level information on the Shelly Devices, but also provides some functions to manage the devices.

To open the Shelly Manage launch the following URL in your browser
- http://&lt;openHAB IP address&gt;:8080/shelly/manager or
- http://&lt;openHAB IP address&gt;:80443/shelly/manager

Mybe you need to change the port matching your setup.

## Overview

Once you opened the Manager you'll an overview of all active things. 
Things which are not discovered or still site in the Inbox will not be displayed.

## Actions

## Firmware Upgrade

The Shelly Manager simplifies the firmware upgrade.
You could select between different versions using the drop down list on the overview page.
Shelly Manager integrates 2 sources
- Allterco official releases: production and beta release (like in the device UI)
- Older firmware release from the firmware archive 

All firmware releases are combined to the selection list.
Click on the version you want to install and Shelly Manager will generate the requested URL to trigger the firmware upgrade.
This URL is displayed on the following page.
The upgrade starts if you click "Perform Update".

The device will download the firmware file, installs the update and restarts the device.
Depending on the device type this takes between 10 and 60 seconds.
The binding will automatically recover the device with the next status check (default: every 60 seconds).

