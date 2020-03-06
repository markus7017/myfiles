# Shelly Binding (org.openhab.binding.shelly)

This openHAB 2 Binding implements control for the Shelly series of devices.
This includes sending commands to the devices as well as reading the device status and sensor data.

Author: Markus Michels (markus7017)
Check  https://community.openhab.org/t/shelly-binding/ for more information, questions and contributing ideas. Any comments are welcome!

Also check section **Additional Information** at the end of the document.
This includes some general comments, information how to debug and request new features.

---

--- 

DISCLAIMER: Please be ware, installing a SNAPSHOT or DEV build might impact the stability of your installation and cause backward compatibility issues. Do a full backup of your installation any time you do an update.

## General Notes

**If you want to use the version released with openHAB 2.5 final**
The official distro releases could be installed as usual using PaperUI:Addons:Bindings:Shelly. This version works fine. Make sure you updated to the 2.5.1-2 core and 2.5.2 Addon releases.
IMPORTANT: Version numbers of openHAB Core and Addons are different. Core has a frozen status on 2.5.1-2, whereas monthly updates are provided to the Addons, currently 2.5.2

If you want to use the SNAPSHOT/DEV build you can NOT install it using PaperUI. 
Make sure that the release version is not installed. **You can NOT run the SNAPSHOT on top of the version you install with PaperUI.**

**Install DEV/SNAPSHOT build of the binding**
- If you want to use the official SNAPSHOT release
download https://openhab.jfrog.io/openhab/libs-pullrequest-local/org/openhab/addons/bundles/org.openhab.binding.shelly/2.5.2-SNAPSHOT/org.openhab.binding.shelly-2.5.2-SNAPSHOT.jar

**OR**

If you want to use the latest DEV version download https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-2.5.2-SNAPSHOT.jar?raw=true
Usually the DEV version is newer than the SNAPSHOT release.

## Installing DEV/SNAPSHOT version

### Download the following files
- https://github.com/markus7017/myfiles/blob/master/shelly/californium-core-2.0.0.jar?raw=true
- https://github.com/markus7017/myfiles/blob/master/shelly/element-connector-2.0.0.jar?raw=true
- https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-2.5.2-SNAPSHOT.jar?raw=true

### Installation

- Open OH console ("openhab-cli console") and run "bundle:list | grep GSon", check if GSon version 2.8.5 is installed
```csv
245 │ Installed │  80 │ 2.8.5                  │ Gson
```
- Stop OH
- copy californium-core-2.0.0.jar to OH's addon folder
- copy element-connector-2.0.0.jar to OH's addon folder
- Start OH, wait until fully initialized
- copy org.openhab.binding.shelly-2.5.2-SNAPSHOT.jar to OH's addon folder

If everything was install correct a "bundle:list" output show be similar to this:

```csv
245 │ Installed │  80 │ 2.8.5                  │ Gson
246 │ Installed │  80 │ 2.0.0                  │ Californium (Cf) Core
247 │ Installed │  80 │ 2.0.0                  │ Californium (Cf) Element Connector
248 │ Installed │  80 │ 2.5.0.201912112158     │ openHAB Add-ons :: Bundles :: Shelly Binding
```

Please let me know if you have problems installing the new build or this doc can be improved.

## Updating DEV version

Channel definitions are subject to change with any alpha or beta release. Please make sure to **delete all Shelly things before updating*** the binding and clean out the JSON DB:

- **remove all shelly entries from paperui**
- stop oh2 service
- run "openhab-cli clean-cache"
  You might skip this step, but it has the risk to have left-overs in the cache
- copy jar into addons (set correct permission)
- start oh2 service
- **re-discover things**
- the channel/item linkage should be restored automatically

If you hit a problem make sure to post a TRACE log (or send PM) so I could look into the details.

### Instalation


## Additional Notes

### General

* The binding was developed an tested on OH version 2.5. It may still run on 2.4, but I'm no longer testing this.

* You should use firmware version 1.5.7 or never.  Consider to go to 1.6, it has various fixes and features for CoIoT and other new features,
It might be that the binding is working with older versions, but thos will no longer supported.
List of Firmware Versions for the different devices could be found here: https://api.shelly.cloud/files/firmware


* If you gave multiple network interfaces you should check openHAB's default setting.

Open PaperUI and go to Configuration:System-:Network Settings and verify the selected interface. 
If the Shelly devices are not on the same network you could try to add them manually.
However, devices in different networks have not been tested yet (please post a comment in the community thread if you are successful).

### Reporting a problem/bug

If you encounter a problem you could put the device into DEBUG or TRACE mode.
Check the community thread first - maybe others already solved the problem: https://community.openhab.org/t/shelly-binding/

- open OH console (execute "openhab-cli console")
- set the debug level ("log:set DEBUG org.openhab.binding.shelly" or "log:set TRACE org.openhab.binding.shelly" for even more details)
- issue command or wait until problem occurs

Create a new Issue here: https://github.com/openhab/openhab-addons/issues
Use [shelly] as prefix for the subject, add a specific title and exact description of the problem.
You might want to send me a PM to give me a heads-up that there is a new Issue, include the link

### Feature Request

Any comment or feature request is welcome. Post the idea to the community thread, all of us will benefit.
Create a new Issue here: https://github.com/openhab/openhab-addons/issues
Use [shelly] as prefix for the subject, add a specific title and exact description of the request.
You might want to send me a PM to give me a heads-up that there is a new Issue, include the link

## Other devices

Check the README.md for supported devices.
If you have one of those devices send me a PM and we could work on the implementation/testing.

## Supporting new devices

You could help to integrate and support new devices. In general the following information is a good start

- open a browser and issue the following urls
- http://&lt;device ip&gt;/settings
- http://&lt;device ip&gt;/status

once basic discovery is implemented the coapDiscription in the Thing properties is required

- enable CoIoT events within the thing configuration
- open the thing properties ([Show Properties])
- and copy&amp;paste the coapDescr property

Create a new Issue here: https://github.com/openhab/openhab-addons/issues
Use [shelly] as prefix for the subject, add a specific title and exact description of the request.
You might want to send me a PM to give me a heads-up that there is a new Issue, include the link


