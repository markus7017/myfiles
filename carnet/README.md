# CarNet Binding

This binding integrates the CarNet service provided by Audi, Volkswagen and other brands.
It provides access to status information and control functions for compatible vehicles, which have activated the service.
The API provides a lot of diagnostic data and provide access to remote control functions like lock/unlock door.

## Discovery

The binding supports automated discovery of vehicles.
The CarNet Account Thing has to be added manually giving the nessesary credentials.
Once the account is online the binding can query all registered vehicles and creates a vehicle thing for each of them.

## Binding Configuration

The binding itself has no configuration options

## Supported Things

### CarNet Account (account)

The Account thing implements the online connect to the CarNet backend.
An account is required to setup the connection (register on the manufacture's portal, e.g. myAudi.de).
The vehicle needs to be registered already at that time.

The account thing has no channels.

### Vehicle

The thing type vehicle represents a registered vehicle.
The vehicle is associated with an account and an online connection is reqiored to access the service.
The vehicle is identified by the unique Vehicle Identification Number (VIN).

The API provides a large number of vehicle data items.
The binding wraps those to channels in different groups.

|Group      |Channel      |Type     |read-only|Desciption                                                  |
|-----------|-------------|---------|---------|------------------------------------------------------------|
|general    |vin          |String   |yes      |Vehicle Identification Number (VIN)                         |
|           |lock         |Switch   |no       |Remotely open/close the vehicle's door lock.                |
|           |update       |Switch   |no       |ON: Request data update for this vehicle.                   |
|status     |             |         |         |Various channels representing the general verhicle status   |
|gas        |             |         |         |Various channels related to gas/electrical consumption      |
|maintenance|             |         |         |Various channels related to vehicle maintenance             |
|doors      |             |         |         |Various channels, e.g. lock states of the doors             |
|tires      |             |         |         |Various channels, e.g. tire pressure etc.                   |

## Thing Configuration

|Parameter         |Description                                               |Mandatory|Default           |
|------------------|----------------------------------------------------------|---------|------------------|
|                  |                                                          |    yes  |none              |


## Full Example

.things

.items

.sitemap

.rule
