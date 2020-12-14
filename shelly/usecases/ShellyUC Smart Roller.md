# Smart rollers with Shelly and openHAB

![Shelly 2.5 in Roller Mode](https://shop.shelly.cloud/image/cache/catalog/shelly_25/shelly25_x1_ce_ul-80x80.jpg)

## Use Case

More and more people have rollers, which are equipped with a motor and button control improving your convince when operating the shutter.

This use case description covers the following aspects
- Operate the roller manual as usual - don't loose some of those features when bringing in the Shelly
- Use openHAB to control the roller (up/down/stop, positioning)
- Utilize device's position favorites
- Utilize safety features, which you get for free with the Shelly

This use case description might also apply to Venetian Blinds, but I don't have those and can't judge on that.
Feel free to adapt the concept and report ideas and experiences to the [community](https://community.openhab.org/t/shelly-binding/56862/1702?u=markus7017): 

## Technical pre-requisites

The implement this use case you need
- Roller motor can be attached to the Shelly
For this how-to a roller with an electrical motor is required and will be control using A/C and a momentary switch.
The same solutions works with other switch types (DC/AC, 2 button switch etc.).
In this case you need to look into details and user a different Shelly configuration or adapt technical installation.
Refer to the Alterco Shelly documentation and make sure to use proper technical installation and wiring.
Important: Electrical installation should be performed only be people knowing what they do - failures could harm you!!

- Shelly 2.5 to control the roller with firmware 1.9.2+
The Shelly 2.5 supports relay and roller operation mode.
To prepare this use case you need to upgrade to firmware 1.9.2 (or newer) and perform some setup steps (see below).

- openHAB 3.0 (or 2.5) with latest version of the binding
openHAB is the perfect foundation to combine manual and automated control of the roller.
The Shelly binding is available for openHAB 3.0, but still supports version 2.5 (you should at least have 2.5.9).
Nevertheless you need to switch to the so called DEV build to benefit from bug fixes and improvements.
This version is currently NOT part of the openHAB 3.0 distribution, a PR has been initiated
and it will not become part of the 2.5.x distribution, because this only receives bug fixes and the use case utilizes new features in the binding.

## Implementation

## Extending the Use Case

There are two valuable options, which even extend and improve the user experience.

- Button-1
Using the described setup you could add a Button-1 to trigger rules, e.g.
- 1xshort: open roller
- 2xshort: go to 25% (because disturbs enjoying your morning coffee with your wife)
- 3xshort: go to 75% (sun is disturbing while watching your TV)
- long   : close shutter (if not done by some automation)

- Voice control
And of course you could utilize openHAB's voice integration, e.g. with Alexa, Siri or Google Home (who need's Cortana).

- Scenes
There are more of less limits when integrating even more advanced roller control based on openHAB rules. 
This allows to provide a scene to the user, which does a lot of complex stuff under the hood.

Be welcome to contribute your ideas to the community, this is what creates the difference between openHAB/Shelly setup compared to rollers with button control.

### Resources