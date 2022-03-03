# Gen 2 Device API JSON Sample Data

## Shelly plus 1PM

### /rpc/Shelly.GetConfig

```
{	"id": 1,
	"src": "shellyplus1pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": true
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
			"pass": null,
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
			"auto_off_delay": 60.0,
			"power_limit": null,
			"voltage_limit": 280,
			"current_limit": 16.0
		},
		"sys": {
			"device": {
				"name": null,
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220117-162947/0.9.3-g354c141",
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
				"ssid": "ShellyPlus1PM-XXXXXXXXXXXX",
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
	"src": "shellyplus1pm-XXXXXXXXXXXX",
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
			"apower": 0.0,
			"voltage": 239.4,
			"current": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646295275
			},
			"temperature": {
				"tC": 42.8,
				"tF": 109.1
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "09:14",
			"unixtime": 1646295278,
			"uptime": 376,
			"ram_size": 264124,
			"ram_free": 154420,
			"fs_size": 458752,
			"fs_free": 229376,
			"cfg_rev": 1,
			"available_updates": {
				"beta": {
					"version": "0.10.0-beta6"
				}
			}
		},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -55
		}
	}
}```

