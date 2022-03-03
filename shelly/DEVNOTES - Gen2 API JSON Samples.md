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
{
	"id": 1,
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
		},
		"sys": {
			"device": {
				"name": null,
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-145236/0.10.0-beta6-g15be642",
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
			"cfg_rev": 2
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
			"voltage": 237.8,
			"current": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646306701
			},
			"temperature": {
				"tC": 41.7,
				"tF": 107.1
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:25",
			"unixtime": 1646306705,
			"uptime": 199,
			"ram_size": 254772,
			"ram_free": 151460,
			"fs_size": 458752,
			"fs_free": 221184,
			"cfg_rev": 2,
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
			"rssi": -53
		}
	}
}
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

## Shelly plus 2PM (Relay Mode)

### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellyplus2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": false,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellyplus2pm-XXXXXXXXXXXX",
			"rpc_ntf": true,
			"status_ntf": false
		},
		"switch:0": {
			"id": 0,
			"name": null,
			"in_mode": "follow",
			"initial_state": "match_input",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0,
			"power_limit": 2800,
			"voltage_limit": 280,
			"current_limit": 10.0
		},
		"switch:1": {
			"id": 1,
			"name": null,
			"in_mode": "follow",
			"initial_state": "match_input",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0,
			"power_limit": 2800,
			"voltage_limit": 280,
			"current_limit": 10.0
		},
		"sys": {
			"device": {
				"name": "Test - 2PM plus",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-145415/0.10.0-beta6-g15be642",
				"eco_mode": true,
				"profile": "switch"
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
			"cfg_rev": 16
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPlus2PM-XXXXXXXXXXXX",
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
	"src": "shellyplus2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": false
		},
		"input:0": {
			"id": 0,
			"state": false
		},
		"input:1": {
			"id": 1,
			"state": false
		},
		"mqtt": {
			"connected": false
		},
		"switch:0": {
			"id": 0,
			"source": "http",
			"output": false,
			"apower": 0.0,
			"voltage": 236.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307308
			},
			"temperature": {
				"tC": 33.7,
				"tF": 92.7
			}
		},
		"switch:1": {
			"id": 1,
			"source": "http",
			"output": false,
			"apower": 0.0,
			"voltage": 235.9,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307308
			},
			"temperature": {
				"tC": 33.7,
				"tF": 92.7
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:35",
			"unixtime": 1646307310,
			"uptime": 187,
			"ram_size": 238520,
			"ram_free": 166556,
			"fs_size": 458752,
			"fs_free": 217088,
			"cfg_rev": 16,
			"available_updates": {}
		},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -49
		}
	}
}
```

## Shelly plus 2PM (Roller Mode)

### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellyplus2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": false,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"cover:0": {
			"id": 0,
			"name": null,
			"motor": {
				"idle_power_thr": 2.0
			},
			"maxtime_open": 60.0,
			"maxtime_close": 60.0,
			"initial_state": "stopped",
			"invert_directions": false,
			"in_mode": "dual",
			"swap_inputs": false,
			"safety_switch": {
				"enable": false,
				"direction": "both",
				"action": "stop",
				"allowed_move": null
			},
			"power_limit": 2800,
			"voltage_limit": 280,
			"current_limit": 10.0,
			"obstruction_detection": {
				"enable": false,
				"direction": "both",
				"action": "stop",
				"power_thr": 1000,
				"holdoff": 1.0
			}
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellyplus2pm-XXXXXXXXXXXX",
			"rpc_ntf": true,
			"status_ntf": false
		},
		"sys": {
			"device": {
				"name": "Test - 2PM plus",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-145415/0.10.0-beta6-g15be642",
				"eco_mode": true,
				"profile": "cover"
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
			"cfg_rev": 17
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPlus2PM-XXXXXXXXXXXX",
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
	"src": "shellyplus2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": false
		},
		"cover:0": {
			"id": 0,
			"source": "init",
			"state": "stopped",
			"apower": 0.0,
			"voltage": 236.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307493
			},
			"temperature": {
				"tC": 34.9,
				"tF": 94.8
			},
			"pos_control": false
		},
		"input:0": {
			"id": 0,
			"state": false
		},
		"input:1": {
			"id": 1,
			"state": false
		},
		"mqtt": {
			"connected": false
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:38",
			"unixtime": 1646307493,
			"uptime": 104,
			"ram_size": 238440,
			"ram_free": 165644,
			"fs_size": 458752,
			"fs_free": 217088,
			"cfg_rev": 17,
			"available_updates": {}
		},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -51
		}
	}
}
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

