**Installing the bundle**

Please check out the [openHAB community thread](https://community.openhab.org/t/magentatv-binding-for-deutsche-telekom-mr-3xx-and-4xx) and discuss your ideas, requests and technical problems with the community.

Before you install the bundle make sure that openHAB's UPnP support is installed. This happens if you install a binding, which uses UPnP discovery (like the Philips HUE bundle), or manually (because the Magenta TV binding is not yet part of the standard openHAB distribution).

open OH console and run bundle:list, you should see something like

```
205 │ Active │  80 │ 2.5.2                   │ JUPnP Library
206 │ Active │  80 │ 2.5.0                   │ openHAB Core :: Bundles :: Configuration UPnP Discovery
207 │ Active │  80 │ 2.5.0                   │ openHAB Core :: Bundles :: UPnP Transport
```

if not install upnp feature:

```
feature:install openhab-transport-upnp
```

Next step is to copy the `org.openhab.binding.magentatv-2.5.9-SNAPSHOT.jar` file to &lt;openHAB installation directory&gt;/addons. 
After a few moments openHAB will detected and load the now bundle. It may be a good advise to restart openHAB making sure that everything is initialized properly.
