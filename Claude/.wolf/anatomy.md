# anatomy.md

> Auto-maintained by OpenWolf. Last scanned: 2026-06-03T13:56:45.356Z
> Files: 128 tracked | Anatomy hits: 0 | Misses: 0

## ../../../../../../.claude/

- `statusline-command.sh` — Claude Code status line (~1369 tok)

## ../../../../../../.claude/plans/

- `mutable-petting-milner.md` — Plan: Meter Channel Unification & Relay Decoupling (~2979 tok)

## ../../../../../../.claude/projects/-Users-mmichels-Dev-openhab-5-2-git-openhab-addons-bundles-org-openhab-binding-shelly/memory/

- `feedback_markdown_formatting.md` (~241 tok)
- `MEMORY.md` — Declares mismatches (~174 tok)

## ../../../../../../.claude/skills/mgm-projectinit/

- `SKILL.md` — mgm-projectinit — New Project Initialization Skill (~12221 tok)

## ../../../../../../.claude/skills/oh-shelly/

- `SKILL.md` — openHAB Shelly Binding — Developer Skill (~3649 tok)

## ./

- `.classpath` (~453 tok)
- `.DS_Store` (~1640 tok)
- `.gitignore` — Git ignore rules (~13 tok)
- `.markdownlint-cli2.yaml` (~12 tok)
- `.project` (~148 tok)
- `CLAUDE.md` — OpenWolf (~705 tok)
- `DEVELOPER.md` — Shelly Binding — Developer Guide (~9720 tok)
- `NOTICE` (~99 tok)
- `pom.xml` — Maven project configuration (~200 tok)
- `README.md` — Project documentation (~49968 tok)
- `TO-DO.md` — TO-DO — PR: shelly_fixmeters (~1571 tok)

## .claude/

- `.gitignore` — Git ignore rules (~8 tok)
- `settings.json` (~468 tok)
- `settings.local.json` (~498 tok)

## .claude/rules/

- `.gitignore` — Git ignore rules (~7 tok)
- `openwolf.md` (~313 tok)

## .settings/

- `org.eclipse.core.resources.prefs` (~40 tok)
- `org.eclipse.jdt.core.prefs` (~112 tok)
- `org.eclipse.m2e.core.prefs` (~23 tok)

## doc/

- `AdvancedUsers.md` — Advanced Users (~1827 tok)
- `ShellyManager.md` — Shelly Manager (~3496 tok)
- `UseCaseSmartRoller.md` — Smartify Roller Shutters with openHAB and Shelly (~3509 tok)

## src/main/feature/

- `feature.xml` (~176 tok)

## src/main/history/

- `dependencies.xml` (~1008 tok)

## src/main/java/org/openhab/binding/shelly/internal/

- `ShellyBindingConstants.java` — The {@link ShellyBindingConstants} class defines common constants, which are (~4531 tok)
- `ShellyDevices.java` — The {@link ShellyDevices} class defines common constants related to Shelly devices, which are (~11986 tok)
- `ShellyHandlerFactory.java` — The {@link ShellyHandlerFactory} is responsible for creating things and thing handlers. (~2516 tok)

## src/main/java/org/openhab/binding/shelly/internal/api/

- `ShellyApiException.java` — The {@link ShellyApiException} implements an extension to the standard Exception class. This allows to keep also the (~1662 tok)
- `ShellyApiInterface.java` — The {@link ShellyApiInterface} Defines device API (~1419 tok)
- `ShellyApiResult.java` — The {@link ShellyApiResult} wraps up the API result and provides some more information like url, http code, received (~2076 tok)
- `ShellyDeviceProfile.java` — The {@link ShellyDeviceProfile} creates a device profile based on the settings returned from the API (~5475 tok)
- `ShellyDiscoveryInterface.java` — The {@link ShellyDiscoveryInterface} defines the API necessary for discovery. (~320 tok)
- `ShellyHttpClient.java` — {@link ShellyHttpClient} implements basic HTTP access (~4336 tok)

## src/main/java/org/openhab/binding/shelly/internal/api1/

- `Shelly1ApiJsonDTO.java` — The {@link Shelly1ApiJsonDTO} is used for the JSon/GSon mapping (~15162 tok)
- `Shelly1CoapHandler.java` — The {@link Shelly1CoapHandler} handles the CoIoT/CoAP registration and events. (~8420 tok)
- `Shelly1CoapJSonDTO.java` — The {@link Shelly1CoapJSonDTO} helps the CoIoT Json into Java objects (~3520 tok)
- `Shelly1CoapListener.java` — The {@link Shelly1CoapListener} describes the listening interface to process Coap responses (~245 tok)
- `Shelly1CoapServer.java` — The {@link Shelly1CoapServer} implements the UDP listener and status event processor (for /cit/s messages) (~1647 tok)
- `Shelly1CoIoTInterface.java` — The {@link Shelly1CoapListener} describes the listening interface to process Coap responses (~436 tok)
- `Shelly1CoIoTProtocol.java` — The {@link Shelly1CoIoTProtocol} implements common functions for the CoIoT implementations (~5398 tok)
- `Shelly1CoIoTVersion1.java` — The {@link Shelly1CoIoTVersion1} implements the parsing for CoIoT version 1 (~5110 tok)
- `Shelly1CoIoTVersion2.java` — The {@link Shelly1CoIoTVersion1} implements the parsing for CoIoT version 1 (~6222 tok)
- `Shelly1EventServlet.java` — {@link Shelly1EventServlet} implements the HttpSocket callback for Gen1 devices (~1504 tok)
- `Shelly1HttpApi.java` — {@link Shelly1HttpApi} wraps the Shelly REST API and provides various low level function to access the device api (~8274 tok)

## src/main/java/org/openhab/binding/shelly/internal/api2/

- `Shelly2ApiClient.java` — {@link Shelly2ApiClient} Low level part of the RPC API (~16789 tok)
- `Shelly2ApiJsonDTO.java` — {@link Shelly2ApiJsonDTO} wraps the Shelly REST API and provides various low level function to acces (~12612 tok)
- `Shelly2ApiRpc.java` — {@link Shelly2ApiRpc} implements Gen2 RPC interface (~17783 tok)
- `Shelly2EventServlet.java` — {@link Shelly2EventServlet} implements the WebSocket callback for Gen2 devices (~1718 tok)
- `Shelly2RpcSocket.java` — Shelly2RpcSocket: connect, onConnect, sendMessage, disconnect (~6164 tok)
- `Shelly2RpctInterface.java` — The {@link Shelly2RpctInterface} is responsible for interfacing the Websocket. (~351 tok)
- `ShellyBluApi.java` — {@link ShellyBluApi} implementsBLU interface (~4831 tok)
- `ShellyBluJsonDTO.java` — {@link ShellyBluJsonDTO} includes contans and structures used for BluApi's JSON mapping and processing. (~977 tok)

## src/main/java/org/openhab/binding/shelly/internal/config/

- `ShellyApiConfiguration.java` — The {@link ShellyApiConfiguration} class contains fields mapping thing configuration parameters. (~4906 tok)
- `ShellyBindingConfiguration.java` — The {@link ShellyBindingConfiguration} maps binding configuration parameters directly from binding.cfg / (~1254 tok)
- `ShellyBindingRuntimeConfig.java` — Immutable runtime snapshot derived from {@link ShellyBindingConfiguration} plus (~1342 tok)
- `ShellyThingConfiguration.java` — The {@link ShellyThingConfiguration} class contains fields mapping thing configuration parameters. (~1111 tok)

## src/main/java/org/openhab/binding/shelly/internal/discovery/

- `ShellyBasicDiscoveryService.java` — Device discovery creates a thing in the inbox for each vehicle (~2514 tok)
- `ShellyMDNSDiscoveryParticipant.java` — This class identifies Shelly devices by their mDNS service information. (~2202 tok)
- `ShellyThingCreator.java` — The {@link ShellyThingCreator} maps the device id into the thing type id (~2096 tok)

## src/main/java/org/openhab/binding/shelly/internal/handler/

- `ShellyBaseHandler.java` — The {@link ShellyBaseHandler} is responsible for handling commands, which are (~18834 tok)
- `ShellyBluHandler.java` — {@link ShellyBluHandler} implements the thing handler for the BLU devices (~507 tok)
- `ShellyColorUtils.java` — The {@link ShellyColorUtils} provides some utility functions around RGBW handling. (~1562 tok)
- `ShellyComponents.java` — * The{@link ShellyComponents} implements updates for supplemental components (~10828 tok)
- `ShellyDeviceListener.java` — {@link ShellyDeviceListener} can register on the {@link ShellyBaseHandler} to be informed about details about (~281 tok)
- `ShellyDeviceStats.java` — * {@link ShellyDeviceStats} some statistical values for the thing (~806 tok)
- `ShellyLightHandler.java` — The {@link ShellyLightHandler} handles light (Bulb, Duo and RGBW2) specific commands and status. All (~7488 tok)
- `ShellyManagerInterface.java` — The {@link ShellyManagerInterface} implements the interface for Shelly Manager to access the thing handler (~566 tok)
- `ShellyProtectedHandler.java` — The {@link ShellyProtectedHandler} implements a dummy handler for password protected devices. (~550 tok)
- `ShellyRelayHandler.java` — * The{@link ShellyRelayHandler} handles light (bulb+rgbw2) specific commands and status. All other commands will be (~4947 tok)
- `ShellyThingInterface.java` — The {@link ShellyThingInterface} implements the interface for Shelly Manager to access the thing han (~984 tok)
- `ShellyThingTable.java` — * The{@link ShellyThingTable} implements a simple table to allow dispatching incoming events to the proper thing (~1848 tok)

## src/main/java/org/openhab/binding/shelly/internal/manager/

- `ShellyManager.java` — {@link ShellyManager} implements the Shelly Manager (~1486 tok)
- `ShellyManagerActionPage.java` — {@link ShellyManagerActionPage} implements the Shelly Manager's action page (~6764 tok)
- `ShellyManagerCache.java` — {@link ShellyManagerCache} implements a cache with expiring times of the entries (~930 tok)
- `ShellyManagerConstants.java` — {@link ShellyManagerConstants} defines the constants for Shelly Manager (~2377 tok)
- `ShellyManagerImageLoader.java` — {@link ShellyManagerImageLoader} implements the Shelly Manager's download proxy for images (load them from bundle) (~927 tok)
- `ShellyManagerOtaPage.java` — {@link ShellyManagerOtaPage} implements the Shelly Manager's download proxy for images (load them from bundle) (~3252 tok)
- `ShellyManagerOverviewPage.java` — {@link ShellyManagerOtaPage} implements the Shelly Manager's device overview page (~4787 tok)
- `ShellyManagerPage.java` — {@link ShellyManagerOtaPage} implements the Shelly Manager's page template (~7196 tok)
- `ShellyManagerServlet.java` — {@link ShellyManagerServlet} implements the Shelly Manager - a simple device overview/management (~1561 tok)

## src/main/java/org/openhab/binding/shelly/internal/provider/

- `ShellyChannelDefinitions.java` — The {@link #CHANNEL_DEFINITIONS} defines channel information for dynamically created channels. Those (~12913 tok)
- `ShellyStateDescriptionProvider.java` — This class provides the list of valid inputs for the input channel of a source. (~1001 tok)
- `ShellyTranslationProvider.java` — {@link ShellyTranslationProvider} provides i18n message lookup (~682 tok)

## src/main/java/org/openhab/binding/shelly/internal/util/

- `ShellyChannelCache.java` — The {@link ShellyChannelCache} implements a caching layer for channel updates. (~1245 tok)
- `ShellyUtils.java` — {@link ShellyUtils} provides general utility functions (~3858 tok)
- `ShellyVersionDTO.java` — {@link ShellyVersionDTO} compares 2 version strings. (~1454 tok)

## src/main/resources/OH-INF/addon/

- `addon.xml` — Declares will (~603 tok)

## src/main/resources/OH-INF/config/

- `config.xml` (~3639 tok)
- `config2.xml` (~1998 tok)
- `configblu.xml` (~437 tok)

## src/main/resources/OH-INF/i18n/

- `shelly_de.properties` — add-on (~18749 tok)
- `shelly.properties` — add-on (~18013 tok)

## src/main/resources/OH-INF/thing/

- `device.xml` — Declares id (~1750 tok)
- `shellyBlu.xml` — Declares id (~1699 tok)
- `shellyGen1_lights.xml` — Declares id (~2990 tok)
- `shellyGen1_relay.xml` — Declares id (~7122 tok)
- `shellyGen1_sensor.xml` — Declares id (~5934 tok)
- `shellyGen2_lights.xml` — Declares id (~785 tok)
- `shellyGen2_relay.xml` — Declares id (~6188 tok)
- `shellyGen2_sensor.xml` — Declares id (~615 tok)
- `unknown.xml` — Declares id (~401 tok)

## src/main/resources/scripts/

- `oh-blu-scanner.js` — ID: getByteSize, bufToHex (~5297 tok)

## src/main/resources/sniplets/

- `action.html` (~324 tok)
- `footer.html` (~66 tok)
- `forward.script` (~40 tok)
- `fw_update1.html` — Declares connection (~590 tok)
- `fw_update2.html` (~194 tok)
- `header.html` — Shelly Manager (~562 tok)
- `ov_device.html` (~1525 tok)
- `ov_footer.html` — below: position_tooltip (~379 tok)
- `ov_header.html` (~488 tok)
- `overview.html` (~669 tok)

## src/test/java/org/openhab/binding/shelly/internal/

- `ShellyDevicesTest.java` — Tests for {@link ShellyDevices}. (~1186 tok)

## src/test/java/org/openhab/binding/shelly/internal/api/

- `ShellyDeviceProfileTest.java` — Tests for {@link ShellyDeviceProfile}. (~4012 tok)

## src/test/java/org/openhab/binding/shelly/internal/api2/

- `Shelly2GetDeviceProfileTest.java` — Tests for {@link Shelly2ApiClient#getDeviceProfile} and the shared (~3996 tok)

## src/test/java/org/openhab/binding/shelly/internal/config/

- `ShellyApiConfigurationTest.java` — Tests for {@link ShellyApiConfiguration} and its inner classes. (~3131 tok)
- `ShellyBindingConfigurationTest.java` — Tests for {@link ShellyBindingConfiguration} and {@link ShellyBindingRuntimeConfig}. (~2606 tok)
- `ShellyThingConfigurationTest.java` — Tests for {@link ShellyThingConfiguration}. (~1434 tok)

## src/test/java/org/openhab/binding/shelly/internal/discovery/

- `ShellyMDNSDiscoveryParticipantTest.java` — Tests for {@link ShellyMDNSDiscoveryParticipantTest}. (~616 tok)
- `ShellyThingCreatorTest.java` — Tests for {@link ShellyThingCreator}. (~6067 tok)

## src/test/java/org/openhab/binding/shelly/internal/handler/

- `ShellyThingTableTest.java` — Tests for {@link ShellyThingTable}. (~2161 tok)

## src/test/java/org/openhab/binding/shelly/internal/util/

- `ShellyUtilsTest.java` — Tests for {@link ShellyUtils}. (~756 tok)
