A new DEV build (_core-light-model_) is available. It brings the Shelly lights onto the new OH Core Lighting Convention (Andrew's PR) and is rebased on the latest main.

Download: [org.openhab.binding.shelly-5.3.0-SNAPSHOT-core-light-model.jar](https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-5.3.0-SNAPSHOT-core-light-model.jar?raw=true)

**Features**
* All Shelly lights (Bulb, Duo, Vintage, RGBW2 in color and white mode, RGBWW, Gen3 Duo and Color Bulb) use the same on/off, brightness, color, color temperature and effect handling.
* New standard "primary" channels (Power, Brightness, Color, Color Temperature) work out of the box with the generic openHAB light widgets.
* The legacy light channels are hidden (advanced) but keep working, so existing items and rules continue to work after the upgrade.
* Existing light things are migrated to the new channel layout automatically.
* Lights no longer need the `brightnessAutoOn` option, the light switches on when a brightness greater than 0 is set.
* Plus/Pro Dimmer models (Gen3/Gen4): 1PM, 2PM, 10V and DALI Dimmer (from main).

**Bug fixes**
* Brightness can be set to 0 again ([#18215](https://github.com/openhab/openhab-addons/issues/18215)).
* Many light fixes found by extensive testing of all available light models, including CoIoT (Gen1) light status updates.
* No spurious meter channels on relay devices without a power meter (from main).
* No `resetTotals` channel on a relay device without a power meter (from main).
* Thing status updates are ignored after a thing was disposed (from main).

**How to Test**
Refer to [READMEbeta](https://github.com/markus7017/myfiles/blob/master/shelly/READMEbeta.md) for install instructions.

* [ ] Bulb / Color Bulb (Gen3): on/off, brightness, RGB color and color temperature work with the primary and the legacy channels.
* [ ] Duo / Duo Bulb (Gen3): brightness and color temperature work.
* [ ] RGBW2 and RGBWW: color, white, gain and effect work in both modes.
* [ ] Existing items and rules linked to the old light channels continue to work after the upgrade.
* [ ] Plus/Pro Dimmer: on/off and brightness work.

Please share your test result by device model.

**Related**
* PR: [[shelly] Implement OH Lighting Convention](https://github.com/openhab/openhab-addons/pull/21286)
* [#21259](https://github.com/openhab/openhab-addons/issues/21259) - [shelly] Migrate the binding to use the OH Core LightModel
* [#18215](https://github.com/openhab/openhab-addons/issues/18215) - [shelly] Brightness cannot be set to zero
* [#19226](https://github.com/openhab/openhab-addons/pull/19226) - [shelly] Add Plus/Pro Dimmer models (Gen3/Gen4): 1PM, 2PM, 10V, DALI
* [#21617](https://github.com/openhab/openhab-addons/pull/21617) - [shelly] Fix spurious meter channels on non-PM relay devices
* [#21675](https://github.com/openhab/openhab-addons/pull/21675) - [shelly] Don't create resetTotals for a relay device without a power meter
* [#21641](https://github.com/openhab/openhab-addons/pull/21641) - [shelly] Ignore thing status updates after dispose

Looking forward to your feedback! :slightly_smiling_face:
