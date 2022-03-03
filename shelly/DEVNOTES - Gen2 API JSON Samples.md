# Gen 2 Device API JSON Sample Data

## Plus Series

#### Shelly Plus 1

#### /shelly

```

```

##### /rpc/Shelly.GetConfig

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

#### /rpc/Shelly.GetStatus

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

### Shelly Plus 1PM

#### /shelly

```

```

#### /rpc/Shelly.GetConfig

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

#### /rpc/Shelly.GetStatus

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

### Shelly Plus 2PM (Relay Mode)

#### /shelly

```

```

#### /rpc/Shelly.GetConfig

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

#### /rpc/Shelly.GetStatus

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

### Shelly Plus 2PM (Roller Mode)

#### /shelly

```

```

#### /rpc/Shelly.GetConfig

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

#### /rpc/Shelly.GetStatus

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

### Shelly Plus i4

#### /shelly

```

```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellyplusi4-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": false,
			"server": "iot.shelly.cloud:6012/jrpc"
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
		"input:2": {
			"id": 2,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"input:3": {
			"id": 3,
			"name": null,
			"type": "switch",
			"invert": false,
			"factory_reset": true
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellyplusi4-XXXXXXXXXXXX",
			"rpc_ntf": true,
			"status_ntf": false
		},
		"sys": {
			"device": {
				"name": null,
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-145542/0.10.0-beta6-g15be642",
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
			"cfg_rev": 5
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPlusI4-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellyplusi4-XXXXXXXXXXXX",
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
		"input:2": {
			"id": 2,
			"state": false
		},
		"input:3": {
			"id": 3,
			"state": false
		},
		"mqtt": {
			"connected": false
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:53",
			"unixtime": 1646308417,
			"uptime": 273,
			"ram_size": 255548,
			"ram_free": 159204,
			"fs_size": 458752,
			"fs_free": 225280,
			"cfg_rev": 5,
			"available_updates": {
				"stable": {
					"version": "i4prod1"
				}
			}
		},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -61
		}
	}
}
```

## Pro Series

### Shelly Pro 1

#### /shelly

```
{
	"name": "Test - Shelly Pro 1",
	"id": "shellypro1-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-001XE16EU",
	"gen": 2,
	"fw_id": "20220302-144302/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro1",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro1-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"eth": {
			"enable": true,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellypro1-XXXXXXXXXXXX",
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
			"input_id": 0
		},
		"sys": {
			"device": {
				"name": "Test - Shelly Pro 1",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144302/0.10.0-beta6-g15be642",
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
			"cfg_rev": 12
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro1-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro1-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"eth": {
			"ip": null
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
			"source": "init",
			"output": false,
			"temperature": {
				"tC": 27.5,
				"tF": 81.4
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "13:05",
			"unixtime": 1646309107,
			"uptime": 462,
			"ram_size": 254432,
			"ram_free": 131956,
			"fs_size": 524288,
			"fs_free": 290816,
			"cfg_rev": 12,
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
			"rssi": -67
		}
	}
}
```

### Shelly Pro 1PM

#### /shelly

```
{
	"name": "Test - Shelly Pro 1PM",
	"id": "shellypro1pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-001PE16EU",
	"gen": 2,
	"fw_id": "20220302-144439/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro1PM",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro1pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"eth": {
			"enable": true,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellypro1pm-XXXXXXXXXXXX",
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0,
			"input_id": 0
		},
		"sys": {
			"device": {
				"name": "Test - Shelly Pro 1PM",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144439/0.10.0-beta6-g15be642",
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
			"cfg_rev": 12
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro1PM-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro1pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"eth": {
			"ip": null
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
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 0.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646309283
			},
			"temperature": {
				"tC": 26.6,
				"tF": 80.0
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "13:10",
			"unixtime": 1646309454,
			"uptime": 167,
			"ram_size": 254224,
			"ram_free": 132556,
			"fs_size": 524288,
			"fs_free": 286720,
			"cfg_rev": 12,
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
			"rssi": -52
		}
	}
}
```

### Shelly Pro 2

#### /shelly

```
{
	"name": null,
	"id": "shellypro2-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-002XE16EU",
	"gen": 2,
	"fw_id": "20220302-144614/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro2",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro2-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"eth": {
			"enable": true,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellypro2-XXXXXXXXXXXX",
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
			"auto_off_delay": 60.0
		},
		"switch:1": {
			"id": 1,
			"name": null,
			"in_mode": "follow",
			"initial_state": "match_input",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0
		},
		"sys": {
			"device": {
				"name": null,
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144614/0.10.0-beta6-g15be642",
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
			"cfg_rev": 11
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro2-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro2-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"eth": {
			"ip": null
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
			"source": "init",
			"output": false,
			"temperature": {
				"tC": 26.4,
				"tF": 79.6
			}
		},
		"switch:1": {
			"id": 1,
			"source": "init",
			"output": false,
			"temperature": {
				"tC": 27.6,
				"tF": 81.7
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "13:20",
			"unixtime": 1646310035,
			"uptime": 222,
			"ram_size": 254336,
			"ram_free": 132700,
			"fs_size": 524288,
			"fs_free": 290816,
			"cfg_rev": 11,
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
			"rssi": -66
		}
	}
}
```

### Shelly Pro 2PM (Relay/Switch Mode)

#### /shelly

```
{
	"name": "Test - Shelly Pro 2PM",
	"id": "shellypro2pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-002PE16EU",
	"gen": 2,
	"fw_id": "20220302-144753/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro2PM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "switch"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"eth": {
			"enable": true,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellypro2pm-XXXXXXXXXXXX",
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
		},
		"sys": {
			"device": {
				"name": "Test - Shelly Pro 2PM",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144753/0.10.0-beta6-g15be642",
				"eco_mode": false,
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
			"cfg_rev": 12
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro2PM-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"eth": {
			"ip": null
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
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 0.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646310206
			},
			"temperature": {
				"tC": 26.8,
				"tF": 80.3
			}
		},
		"switch:1": {
			"id": 1,
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 0.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646310206
			},
			"temperature": {
				"tC": 28.0,
				"tF": 82.4
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "13:27",
			"unixtime": 1646310429,
			"uptime": 219,
			"ram_size": 253248,
			"ram_free": 129688,
			"fs_size": 524288,
			"fs_free": 282624,
			"cfg_rev": 12,
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
			"rssi": -59
		}
	}
}
```

### Shelly Pro 2PM (Roller/Cover Mode)

#### /shelly

```
{
	"name": "Test - Shelly Pro 2PM",
	"id": "shellypro2pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-002PE16EU",
	"gen": 2,
	"fw_id": "20220302-144753/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro2PM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "cover"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0,
			"obstruction_detection": {
				"enable": false,
				"direction": "both",
				"action": "stop",
				"power_thr": 1000,
				"holdoff": 1.0
			}
		},
		"eth": {
			"enable": true,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"mqtt": {
			"enable": false,
			"server": null,
			"user": null,
			"topic_prefix": "shellypro2pm-XXXXXXXXXXXX",
			"rpc_ntf": true,
			"status_ntf": false
		},
		"sys": {
			"device": {
				"name": "Test - Shelly Pro 2PM",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144753/0.10.0-beta6-g15be642",
				"eco_mode": false,
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
			"cfg_rev": 13
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro2PM-XXXXXXXXXXXX",
				"is_open": true,
				"enable": false
			},
			"sta": {
				"ssid": "XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro2pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"cover:0": {
			"id": 0,
			"source": "init",
			"state": "stopped",
			"apower": 0.0,
			"voltage": 0.0,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 0
			},
			"temperature": {
				"tC": 28.0,
				"tF": 82.4
			},
			"pos_control": false
		},
		"eth": {
			"ip": null
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
			"time": "13:30",
			"unixtime": 1646310644,
			"uptime": 150,
			"ram_size": 237796,
			"ram_free": 140768,
			"fs_size": 524288,
			"fs_free": 282624,
			"cfg_rev": 13,
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
			"rssi": -60
		}
	}
}
```

### Shelly Pro 4PM

#### /rpc/Shelly.GetConfig

```
{
	"id": 1,
	"src": "shellypro4pm-XXXXXXXXXXXX",
	"result": {
		"ble": {
			"enable": false
		},
		"cloud": {
			"enable": true,
			"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
		},
		"eth": {
			"enable": false,
			"ipv4mode": "dhcp",
			"ip": null,
			"netmask": null,
			"gw": null,
			"nameserver": null
		},
		"input:0": {
			"id": 0,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:1": {
			"id": 1,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:2": {
			"id": 2,
			"name": null,
			"type": "switch",
			"invert": false
		},
		"input:3": {
			"id": 3,
			"name": null,
			"type": "switch",
			"invert": false
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
			"in_mode": "follow",
			"initial_state": "match_input",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0,
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
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
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
		},
		"switch:2": {
			"id": 2,
			"name": null,
			"in_mode": "follow",
			"initial_state": "match_input",
			"auto_on": false,
			"auto_on_delay": 60.0,
			"auto_off": false,
			"auto_off_delay": 60.0,
			"power_limit": 4480,
			"voltage_limit": 280,
			"current_limit": 16.0
		},
		"switch:3": {
			"id": 3,
			"name": null,
			"in_mode": "follow",
			"initial_state": "match_input",
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
				"name": "Test - 4Pro",
				"mac": "XXXXXXXXXXXX",
				"fw_id": "20220302-144124/0.10.0-beta6-g15be642",
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
			"cfg_rev": 4
		},
		"ui": {
			"idle_brightness": 30
		},
		"wifi": {
			"ap": {
				"ssid": "ShellyPro4PM-XXXXXXXXXXXX",
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

#### /rpc/Shelly.GetStatus

```
{
	"id": 1,
	"src": "shellypro4pm-XXXXXXXXXXXX",
	"result": {
		"ble": {},
		"cloud": {
			"connected": true
		},
		"eth": {
			"ip": null
		},
		"input:0": {
			"id": 0,
			"state": false
		},
		"input:1": {
			"id": 1,
			"state": false
		},
		"input:2": {
			"id": 2,
			"state": false
		},
		"input:3": {
			"id": 3,
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
			"voltage": 233.1,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307959
			},
			"temperature": {
				"tC": 26.6,
				"tF": 80.0
			}
		},
		"switch:1": {
			"id": 1,
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 233.1,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307959
			},
			"temperature": {
				"tC": 26.6,
				"tF": 80.0
			}
		},
		"switch:2": {
			"id": 2,
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 233.2,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307958
			},
			"temperature": {
				"tC": 26.6,
				"tF": 80.0
			}
		},
		"switch:3": {
			"id": 3,
			"source": "init",
			"output": false,
			"apower": 0.0,
			"voltage": 233.2,
			"current": 0.0,
			"pf": 0.0,
			"aenergy": {
				"total": 0.0,
				"by_minute": [
					0.0,
					0.0,
					0.0
				],
				"minute_ts": 1646307958
			},
			"temperature": {
				"tC": 26.6,
				"tF": 80.0
			}
		},
		"sys": {
			"mac": "XXXXXXXXXXXX",
			"restart_required": false,
			"time": "12:46",
			"unixtime": 1646307960,
			"uptime": 187,
			"ram_size": 253196,
			"ram_free": 137644,
			"fs_size": 524288,
			"fs_free": 282624,
			"cfg_rev": 4,
			"available_updates": {
				"stable": {
					"version": "0.9.3"
				}
			}
		},
		"ui": {},
		"wifi": {
			"sta_ip": "192.168.33.1",
			"status": "got ip",
			"ssid": "SSID",
			"rssi": -58
		}
	}
}
```
