
# Carnet Binding (org.openhab.binding.carnet)

This openHAB  Binding implements the Audi CarNet API (myAudi), which allows to monitor Audi vehicles, but also supports some control functions.

Author: Markus Michels (markus7017)
Check  https://community.openhab.org/t/audi-carnet-binding-myaudi more information, questions and contributing ideas. Any comments are welcome!

Also check section **Additional Information** at the end of the document.
This includes some general comments, information how to debug and request new features.

Please let me know if you have problems installing the new build or this doc can be improved.

---

DISCLAIMER: Please be ware, installing a SNAPSHOT or DEV build might impact the stability of your installation and cause backward compatibility issues. Do a full backup of your installation any time you do an update.

--- 

## General Notes

If you want to use the* latest DEV version* download the [jar from my myfiles repo in GitHub](https://github.com/markus7017/myfiles/tree/master/carnet).
Most important
- [README](https://github.com/markus7017/myfiles/blob/master/carnet/README.md)
- [binding jar](https://github.com/markus7017/myfiles/blob/master/carnet/org.openhab.binding.carnet-2.5.5-SNAPSHOT.jar?raw=true)

### Installation

### New installation
- Stop OH
- copy the binding jar to OH's addons folder
- Start OH, wait until fully initialized(!)

If everything was install correct a "bundle:list" output show be similar to this:

```
248 │ Installed │  80 │ 2.5.5.202009212158     │ openHAB Add-ons :: Bundles :: CarNet Binding
```

Don't worry about version 2.5.5 number, it runs on OH 2.5.x incl. 2.5.9

## Updating DEV version

Channel definitions are subject to change with any beta release. Please make sure to **delete all Shelly things before updating*** the binding and clean out the JSON DB:

- **remove all CarNet things in PaperUI:Configuration:Things** (don't worry: the thing/item linkage will be restored when performing a re-discovery)
- stop OH
- delete the existing binding jar from the addons folder, wait until OH unloaded the binding (check the OH log)
- run "bundle:list | grep CarNet" and make sure that the binding is gone
- otherwise run "bundle:uninstall <bundle id as listed from above (1st column)>"
- stop OH ("openhab-cli stop"), wait until everything is stopped (could take some time)
- copy binding jar into addons (set correct permission)
- start oh2 service ("openhab-cli start")
- **re-discover things**
- the channel/item linkage should be restored automatically
  verify the linked channels, maybe the are new ones and in rare cases I rename channels for consistency.

If you hit a problem make sure to post a TRACE log (or send PM) so I could look into the details.

## Additional Notes

### General

* The binding is developed an tested on OH version 2.5.8 and 2.5.9.

* Different vehicle models or markets (EU/US/CN) while result in different channels and available control functions

### Reporting a problem/bug

If you encounter a problem you could put the binding into DEBUG or TRACE mode.
Check the [community thread](https://github.com/markus7017/myfiles/tree/master/carnetZ/ first - maybe others already solved the problem:.

- open OH console (execute "openhab-cli console")
- set the bindings's log level: "log:set DEBUG org.openhab.binding.carnet" or "log:set TRACE org.openhab.binding.carnet" for even more details
- issue command or wait until problem occurs
- extract the relevant section from openhab.log - please include enough lines before/after, this helps on diagnosis (root cause)
- anomynize all specific data of your installation (e.g. credentials for password protected devices, VIN)

Create a new Issue here: https://github.com/openhab/openhab-addons/issues
Use [carnet] as prefix for the subject, add a specific title and exact description of the problem.
You might want to send me a PM to give me a heads-up that there is a new Issue, include the link

### Feature Request

Any comment or feature request is welcome. Post the idea to the community thread, all of us will benefit.
Create a new Issue here: https://github.com/openhab/openhab-addons/issues
Use [carnet] as prefix for the subject, add a specific title and exact description of the request.
You might want to send me a PM to give me a heads-up that there is a new Issue, include the link

## Supporting new vehicle types, features

You could help to integrate and support new vehicle models. In general the following information is a good start

- Vehicle type, model (incl. year), check thing properties
- Market (EU/US/CN)
- features like electrical car, pre-header

In general CarNet is also available for Volkswagen and Skoda vehicles. However, the APIs are similar, but login handling, http headers 
and some of the API calls are different. Currently I focus on Audi, everything else is postponed.

