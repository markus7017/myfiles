# X-Sense Binding

This binding integrates [X-Sense](https://www.x-sense.com) home safety devices into openHAB: smoke detectors and water leak sensors, with more sensor types (CO, heat, thermo-hygrometer, security accessories) planned for a follow-up release.
Sensors are connected through the X-Sense SBS50 Base Station, which links the battery powered sensors via a proprietary RF protocol and connects to the network via 2.4 GHz Wi-Fi.

## Scope and Cloud Usage

The X-Sense system does not provide a documented local API.
Communication is therefore performed through the X-Sense cloud services using the credentials of your X-Sense account.
The binding polls the device inventory via the cloud REST API; real-time state updates (alarms, sensor values) will be added with the upcoming MQTT support.
All cloud communication uses HTTPS.
A future version may add local communication once a local API becomes available.

The binding maps the X-Sense cloud data model to a four level thing hierarchy: `account` → `home` → `station` → sensor.
Multiple accounts, multiple homes per account, multiple base stations per home and multiple sensors per station are supported.

## Binding Configuration

The binding configuration (Settings → Add-on Settings → X-Sense Binding) provides defaults for all accounts:

| Name            | Type    | Description                                                           | Default |
|-----------------|---------|-----------------------------------------------------------------------|---------|
| refreshInterval | integer | Default interval in seconds for polling the device inventory (min 30) | 300     |

Account things inherit this value unless they configure their own interval.

## Supported Things

| Thing Type UID     | Type   | Description                                        |
|--------------------|--------|----------------------------------------------------|
| xsense:account     | Bridge | Represents your X-Sense account (cloud connection) |
| xsense:home        | Bridge | A home (house) registered in the account           |
| xsense:station     | Bridge | X-Sense SBS50 Base Station                         |
| xsense:smoke       | Thing  | Smoke detector (e.g. XS01-M, XS0B-MR, XS0D-MR)     |
| xsense:water       | Thing  | Water leak detector (e.g. SWS51, SWS54)            |

Additional sensor types (CO, heat, thermo-hygrometer, security accessories) are recognized by the cloud API but not yet exposed as things; they will be added in a follow-up release.

## Discovery

Discovery imports the whole account tree progressively, starting automatically as soon as the `account` bridge goes online (or manually via a scan):

1. Once the `account` bridge is online, all homes of the account appear in the inbox.
1. Once a `home` thing has been added, its base stations appear.
1. Once a `station` thing has been added, its attached sensors appear.

Each inventory poll re-publishes all levels whose parent thing already exists, so after approving a thing the next level appears within seconds without a manual rescan.
Unsupported device models are logged on debug level, please report them so support can be added.

## Thing Configuration

### `account` Bridge Configuration

| Name            | Type    | Description                                                    | Default         | Required | Advanced |
|-----------------|---------|-----------------------------------------------------------------|-----------------|----------|----------|
| email           | text    | Email address of your X-Sense account                          | N/A             | yes      | no       |
| password        | text    | Password of your X-Sense account                               | N/A             | yes      | no       |
| refreshInterval | integer | Interval in seconds for polling the device inventory (min 30)  | binding default | no       | yes      |

### `home` Bridge Configuration

| Name    | Type | Description                                 | Default | Required | Advanced |
|---------|------|----------------------------------------------|---------|----------|----------|
| houseId | text | Identifier of the home in the X-Sense cloud | N/A     | yes      | no       |

### `station` Bridge Configuration

| Name      | Type | Description                       | Default | Required | Advanced |
|-----------|------|------------------------------------|---------|----------|----------|
| stationSn | text | Serial number of the base station | N/A     | yes      | no       |

### Sensor Thing Configuration

All sensor things (`smoke`, `water`) share the same configuration:

| Name     | Type | Description                 | Default | Required | Advanced |
|----------|------|-------------------------------|---------|----------|----------|
| deviceSn | text | Serial number of the sensor | N/A     | yes      | no       |

### Full Example (`.things` file)

Things can be created through auto-discovery (see below) or manually via a `.things` file.
The `deviceSn`/`stationSn`/`houseId` values are taken from the X-Sense app or from a discovered thing's properties.

```java
Bridge xsense:account:myaccount "My X-Sense Account" [ email="user@example.com", password="secret" ] {
    Bridge home h1a2b3 "My Home" [ houseId="h1a2b3" ] {
        Bridge station sbs50 "Hallway Base Station" [ stationSn="SBS50-1234" ] {
            Thing smoke kitchen "Kitchen Smoke Detector" [ deviceSn="DEV567" ]
            Thing water basement "Basement Water Sensor" [ deviceSn="DEV890" ]
        }
    }
}
```
