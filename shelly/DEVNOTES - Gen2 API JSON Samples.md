# Gen 2 Device API JSON Sample Data

## Shelly plus 1

### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellyplus1-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": null,
			"rpc_ntf": true,
			"status_ntf": false
		},
		"switch:0": {
			"id": 0,
			"name": null,
			"in_mode": "detached",
			"initial_state": "restore_last",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0
		},
		"sys": {
			"device": {
				"name": null,
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-145102/0.10.0-beta6-g15be642",
				"eco_mode": false
			},
			"location": {
				"tz": "Europe/Berlin",
				"lat": 0.00000,
				"lon": 0.00000
			},
			"debug": {
				"mqtt": {
					"enable": false
				},
				"websocket": {
					"enable": false
				},
				"udp": {
					"addr": null
				}
			},
			"ui_data": {},
			"rpc_udp": {
				"dst_addr": null,
				"listen_port": null
			},
			"sntp": {
				"server": "time.google.com"
			},
			"cfg_rev": 1
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPlus1-XXXXXXXXXXXX",
				"is_open": true,
				"enable": false
			},
			"sta": {
				"ssid": "SSID",
				"is_open": false,
				"enable": true,
				"ipv4mode": "dhcp",
				"ip": null,
				"netmask": null,
				"gw": null,
				"nameserver": null
			},
			"sta1": {
				"ssid": null,
				"is_open": true,
				"enable": false,
				"ipv4mode": "dhcp",
				"ip": null,
				"netmask": null,
				"gw": null,
				"nameserver": null
			},
			"roam": {
				"rssi_thr": -80,
				"interval": 60
			}
		}
	}
}
```

### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellyplus1-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"input:0": {
			"id": 0,
			"state": false
		},
		"mqtt": {
			"connected": false
		},
		"switch:0": {
			"id": 0,
			"source": "init",
			"output": false,
			"temperature": {
				"tC": 47.1,
				"tF": 116.9
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:18",
			"unixtime": 1646306284,
			"uptime": 290,
			"ram_size": 254956,
			"ram_free": 155244,
			"fs_size": 458752,
			"fs_free": 225280,
			"cfg_rev": 1,
			"available_updates": {
				"stable": {
					"version": "0.9.3"
				}
			}
		},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -64
		}
	}
}
```

## Shelly pro 1

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly plus 1PM

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly pro 1PM

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly pro 2

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly plus 2PM

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly pro 2PM

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly pro 4PM

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

## Shelly plus i4

### /rpc/Shelly.GetConfig

```
```

### /rpc/Shelly.GetStatus

```
```

