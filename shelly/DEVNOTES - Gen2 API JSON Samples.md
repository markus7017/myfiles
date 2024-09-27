# Gen 2 Device API JSON Sample Data

## Plus Series

### Shelly Plus 1

#### /shelly

```
{
	"name": "Test - Shelly Plus 1",
	"id": "shellyplus1-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSW-001X16EU",
	"gen": 2,
	"fw_id": "20220302-145102/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Plus1",
	"auth_en": false,
	"auth_domain": null
}
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
				"name": "Test - Shelly Plus 1",
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
{
	"name": "Test - Shelly Plus 1PM",
	"id": "shellyplus1pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSW-001P16EU",
	"gen": 2,
	"fw_id": "20220302-145236/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Plus1PM",
	"auth_en": false,
	"auth_domain": null
}
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
				"name": "Test - Shelly Plus 1PM",
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

### Shelly Plus 2PM (Relay/Switch Mode)

#### /shelly

```
{
	"name": "Test - Shelly Plus 2PM",
	"id": "shellyplus2pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSW-002P16EU",
	"gen": 2,
	"fw_id": "20220302-145415/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Plus2PM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "switch"
}
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
				"name": "Test - Shelly Plus 2PM",
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

### Shelly Plus 2PM (Roller/Cover Mode)

#### /shelly

```
{
	"name": "Test - Shelly Plus 2PM",
	"id": "shellyplus2pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSW-002P16EU",
	"gen": 2,
	"fw_id": "20220302-145415/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Plus2PM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "cover"
}
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
				"name": "Test - Shelly Plus 2PM",
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
{
	"name": "Test - Shelly Plus i4",
	"id": "shellyplusi4-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSN-0024X",
	"gen": 2,
	"fw_id": "20220302-145542/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "PlusI4",
	"auth_en": false,
	"auth_domain": null
}
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
				"name": "Test - Shelly Plus i4",
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

### Shelly Plus H&T (battery operated)

#### /shelly

```
{
	"name": "Test Plus H&T",
	"id": "shellyplusht-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSN-0013A",
	"gen": 2,
	"fw_id": "20220421-144231/plushtbeta1-g4e5dc3e",
	"ver": "plushtbeta1",
	"app": "PlusHT",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"devicepower:0": {},
	"ht_ui": {
		"temperature_unit": "C"
	},
	"humidity:0": {
		"id": 0,
		"name": null,
		"report_thr": 5
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusht-30839809dd6c",
		"user": null,
		"topic_prefix": "shellyplusht-30839809dd6c",
		"rpc_ntf": true,
		"status_ntf": false
	},
	"sys": {
		"device": {
			"name": "Test Plus H&T",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20220421-144231/plushtbeta1-g4e5dc3e",
			"discoverable": true
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
		"sleep": {
			"wakeup_period": 43200
		},
		"cfg_rev": 10
	},
	"temperature:0": {
		"id": 0,
		"name": null,
		"report_thr_C": 1.0
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPlusHT-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false
		},
		"sta": {
			"ssid": "SSID",
			"is_open": false,
			"enable": true,
			"ipv4mode": "static",
			"ip": "192.168.33.2",
			"netmask": "255.255.255.0",
			"gw": "192.168.33.1",
			"nameserver": "192.168.33.1"
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
```

#### /rpc/Shelly.GetStatus (0.10)

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"devicepower:0": {
		"id": 0,
		"battery": {
			"V": 6.08,
			"percent": 89
		},
		"external": {
			"present": false
		}
	},
	"ht_ui": {},
	"humidity:0": {
		"id": 0,
		"rh": 43.2
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "08:11",
		"unixtime": 1650780678,
		"uptime": 67,
		"ram_size": 239544,
		"ram_free": 166580,
		"fs_size": 458752,
		"fs_free": 196608,
		"cfg_rev": 10,
		"available_updates": {
			"stable": {
				"version": "plushtprod0"
			}
		},
		"wakeup_reason": {
			"boot": "deepsleep_wake",
			"cause": "button"
		}
	},
	"temperature:0": {
		"id": 0,
		"tC": 26.4,
		"tF": 79.5
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -54
	}
}
```

#### /rpc/Shelly.GetStatus (0.11beta3)

```
{
   "ble":{
      
   },
   "cloud":{
      "connected":false
   },
   "devicepower:0":{
      "id":0,
      "battery":{
         "V":6.18,
         "percent":100
      },
      "external":{
         "present":false
      }
   },
   "ht_ui":{
      
   },
   "humidity:0":{
      "id":0,
      "rh":42.0
   },
   "mqtt":{
      "connected":false
   },
   "sys":{
      "mac":"441793CCAC64",
      "restart_required":false,
      "time":"16:55",
      "unixtime":1660402552,
      "uptime":19,
      "ram_size":249952,
      "ram_free":143880,
      "fs_size":458752,
      "fs_free":176128,
      "cfg_rev":9,
      "kvs_rev":0,
      "webhook_rev":0,
      "available_updates":{
         "stable":{
            "version":"plushtprod1.2"
         }
      },
      "wakeup_reason":{
         "boot":"deepsleep_wake",
         "cause":"button"
      },
      "wakeup_period":43200
   },
   "temperature:0":{
      "id":0,
      "tC":27.8,
      "tF":82.0
   },
   "wifi":{
      "sta_ip":"192.168.6.218",
      "status":"got ip",
      "ssid":"TurtlePineHouse",
      "rssi":-59
   },
   "ws":{
      "connected":true
   }
}
```

### Shelly Plus Dimmer US

#### /shelly

```
{
   "name":"shellydimmer-dining",
   "id":"shellypluswdus-441793ccbf30",
   "mac":"441793CCBF30",
   "model":"SNDM-0013US",
   "gen":2,
   "fw_id":"20221206-143116/0.12.0-gafc2404",
   "ver":"0.12.0",
   "app":"PlusWallDimmer",
   "auth_en":false,
   "auth_domain":null
}
```

#### /rpc/Shelly.GetConfig

```
{
   "ble":{
      "enable":false,
      "rpc":{
         "enable":true
      }
   },
   "cloud":{
      "enable":false,
      "server":"iot.shelly.cloud:6012/jrpc"
   },
   "light:0":{
      "id":0,
      "name":null,
      "initial_state":"restore_last",
      "auto_on":false,
      "auto_on_delay":60.00,
      "auto_off":false,
      "auto_off_delay":60.00,
      "default":{
         "brightness":50
      },
      "night_mode":{
         "enable":false,
         "brightness":50,
         "active_between":[
            
         ]
      }
   },
   "mqtt":{
      "enable":false,
      "server":null,
      "client_id":"shellypluswdus-441793ccbf30",
      "user":null,
      "topic_prefix":"shellypluswdus-441793ccbf30",
      "rpc_ntf":true,
      "status_ntf":false,
      "use_client_cert":false
   },
   "sys":{
      "device":{
         "name":"shellydimmer-dining",
         "mac":"441793CCBF30",
         "fw_id":"20221206-143116/0.12.0-gafc2404",
         "discoverable":true,
         "eco_mode":false
      },
      "location":{
         "tz":"America/New_York",
         "lat":27.424790,
         "lon":-81.991850
      },
      "debug":{
         "mqtt":{
            "enable":false
         },
         "websocket":{
            "enable":false
         },
         "udp":{
            "addr":null
         }
      },
      "ui_data":{
         
      },
      "rpc_udp":{
         "dst_addr":null,
         "listen_port":null
      },
      "sntp":{
         "server":"time.google.com"
      },
      "cfg_rev":10
   },
   "wd_ui":{
      "sys_led_enable":true,
      "power_led":"match_output"
   },
   "wifi":{
      "ap":{
         "ssid":"ShellyPlusWDUS-441793CCBF30",
         "is_open":false,
         "enable":false,
         "range_extender":{
            "enable":false
         }
      },
      "sta":{
         "ssid":"TurtlePineHouse",
         "is_open":false,
         "enable":true,
         "ipv4mode":"dhcp",
         "ip":null,
         "netmask":null,
         "gw":null,
         "nameserver":null
      },
      "sta1":{
         "ssid":null,
         "is_open":true,
         "enable":false,
         "ipv4mode":"dhcp",
         "ip":null,
         "netmask":null,
         "gw":null,
         "nameserver":null
      },
      "roam":{
         "rssi_thr":-80,
         "interval":60
      }
   },
   "ws":{
      "enable":false,
      "server":null,
      "ssl_ca":"ca.pem"
   }
}
```

#### /rpc/Shelly.GetStatus

```
{
   "ble":{
      
   },
   "cloud":{
      "connected":false
   },
   "light:0":{
      "id":0,
      "source":"ui",
      "output":false,
      "brightness":43.0
   },
   "mqtt":{
      "connected":false
   },
   "sys":{
      "mac":"441793CCBF30",
      "restart_required":false,
      "time":"14:45",
      "unixtime":1673120702,
      "uptime":153785,
      "ram_size":235924,
      "ram_free":163572,
      "fs_size":458752,
      "fs_free":114688,
      "cfg_rev":10,
      "kvs_rev":0,
      "schedule_rev":0,
      "webhook_rev":0,
      "available_updates":{
         
      }
   },
   "wd_ui":{
      
   },
   "wifi":{
      "sta_ip":"192.168.1.147",
      "status":"got ip",
      "ssid":"TurtlePineHouse",
      "rssi":-48
   },
   "ws":{
      "connected":false
   }
}
```

### Shelly Plus Plug S

#### /shelly

```
{
	"name": "Test - Shelly Plus Plug S",
	"id": "shellyplusplugs-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNPL-00112EU",
	"gen": 2,
	"fw_id": "20221205-095342/0.12.99-plugsprod1-g234a63c",
	"ver": "0.12.99-plugsprod1",
	"app": "PlusPlugS",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusplugs-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplusplugs-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false
	},
	"plugs_ui": {
		"leds": {
			"mode": "power",
			"colors": {
				"switch:0": {
					"on": {
						"rgb": [
							0.0,
							100.0,
							0.0
						],
						"brightness": 10.0
					},
					"off": {
						"rgb": [
							100.0,
							0.0,
							0.0
						],
						"brightness": 10.0
					}
				},
				"power": {
					"brightness": 10.0
				}
			},
			"night_mode": {
				"enable": true,
				"brightness": 0.0,
				"active_between": [
					"22:00",
					"07:00"
				]
			}
		},
		"controls": {
			"switch:0": {
				"in_mode": "momentary"
			}
		}
	},
	"switch:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"power_limit": 3360,
		"voltage_limit": 280,
		"current_limit": 12.0
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Plus Plug S",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20221205-095342/0.12.99-plugsprod1-g234a63c",
			"discoverable": true,
			"eco_mode": true
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
		"cfg_rev": 23
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPlusPlugS-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"mqtt": {
		"connected": false
	},
	"plugs_ui": {},
	"switch:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"apower": 0.0,
		"voltage": 0.2,
		"current": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1673501307
		},
		"temperature": {
			"tC": 56.2,
			"tF": 133.1
		}
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "06:28",
		"unixtime": 1673501310,
		"uptime": 650,
		"ram_size": 234696,
		"ram_free": 158248,
		"fs_size": 458752,
		"fs_free": 110592,
		"cfg_rev": 23,
		"kvs_rev": 2,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {}
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -50
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Plus Uni

#### /shelly

```
{
	"name": "Shelly Plus UNI",
	"id": "shellyplusuni-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 1,
	"model": "SNSN-0043X",
	"gen": 2,
	"fw_id": "20230802-143927/1.0.99-plusunisamples1-gf61a490",
	"ver": "1.0.99-plusunisamples1",
	"app": "PlusUni",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": true,
		"rpc": {
			"enable": true
		},
		"observer": {
			"enable": false
		}
	},
	"cloud": {
		"enable": false,
		"server": "iot.shelly.cloud:6012/jrpc"
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
		"type": "count",
		"count_rep_thr": 100,
		"freq_window": 1,
		"freq_rep_thr": 10
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusuni-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplusuni-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
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
			"name": "Shelly Plus UNI",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20230802-143927/1.0.99-plusunisamples1-gf61a490",
			"discoverable": true,
			"eco_mode": true
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
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
		"cfg_rev": 6
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPlusUni-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
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
		"counts": {
			"total": 0,
			"by_minute": [
				0,
				0,
				0
			],
			"minute_ts": 1693408514
		},
		"freq": 0.0
	},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "WS_in",
		"output": false
	},
	"switch:1": {
		"id": 1,
		"source": "init",
		"output": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "17:15",
		"unixtime": 1693408516,
		"uptime": 293,
		"ram_size": 259448,
		"ram_free": 127524,
		"fs_size": 458752,
		"fs_free": 139264,
		"cfg_rev": 6,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {}
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -61
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Plus RGBW - Profile "Light"

#### /shelly

```
{
	"name": "Shelly Plus RGBW",
	"id": "shellyplusrgbw-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 1,
	"model": "SNDC-0D4P10WW",
	"gen": 2,
	"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
	"ver": "0.99.99-plusrgbwsamples0",
	"app": "PlusRGBW",
	"auth_en": false,
	"auth_domain": null,
	"profile": "light",
	"hf": 125280,
	"hmf": 106280,
	"fsf": 98304
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		},
		"observer": {
			"enable": false
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"invert": false
	},
	"light:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"light:1": {
		"id": 1,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"light:2": {
		"id": 2,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"light:3": {
		"id": 3,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusrgbw-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplusrgbw-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Shelly Plus RGBW",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
			"discoverable": true,
			"eco_mode": false,
			"profile": "light"
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
			"ssid": "ShellyPlusRGBW-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"light:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 0.0,
		"temperature": {
			"tC": 47.9,
			"tF": 118.2
		},
		"calibrated": false,
		"voltage": 24.5
	},
	"light:1": {
		"id": 1,
		"source": "init",
		"output": false,
		"brightness": 0.0,
		"temperature": {
			"tC": 47.9,
			"tF": 118.2
		},
		"calibrated": false,
		"voltage": 24.5
	},
	"light:2": {
		"id": 2,
		"source": "init",
		"output": false,
		"brightness": 0.0,
		"temperature": {
			"tC": 47.9,
			"tF": 118.2
		},
		"calibrated": false,
		"voltage": 24.5
	},
	"light:3": {
		"id": 3,
		"source": "init",
		"output": false,
		"brightness": 0.0,
		"temperature": {
			"tC": 47.9,
			"tF": 118.2
		},
		"calibrated": false,
		"voltage": 24.5
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "17:39",
		"unixtime": 1693409986,
		"uptime": 192,
		"ram_size": 242652,
		"ram_free": 124364,
		"fs_size": 458752,
		"fs_free": 98304,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 2,
		"webhook_rev": 2,
		"available_updates": {}
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -49
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Plus RGBW - Profile "RGB"

#### /shelly

```
{
	"name": "Shelly Plus RGBW",
	"id": "shellyplusrgbw-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 1,
	"model": "SNDC-0D4P10WW",
	"gen": 2,
	"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
	"ver": "0.99.99-plusrgbwsamples0",
	"app": "PlusRGBW",
	"auth_en": false,
	"auth_domain": null,
	"profile": "rgb",
	"hf": 129696,
	"hmf": 116088,
	"fsf": 98304
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		},
		"observer": {
			"enable": false
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"invert": false
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusrgbw-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplusrgbw-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"rgb:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0,
			"rgb": [
				0.0,
				0.0,
				50.0
			]
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"sys": {
		"device": {
			"name": "Shelly Plus RGBW",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
			"discoverable": true,
			"eco_mode": false,
			"profile": "rgb"
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
			"ssid": "ShellyPlusRGBW-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"mqtt": {
		"connected": false
	},
	"rgb:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"rgb": [
			0.0,
			0.0,
			50.0
		],
		"brightness": 50.0,
		"temperature": {
			"tC": 51.9,
			"tF": 125.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1693410297
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.5
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "17:45",
		"unixtime": 1693410300,
		"uptime": 103,
		"ram_size": 242968,
		"ram_free": 129256,
		"fs_size": 458752,
		"fs_free": 98304,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 3,
		"webhook_rev": 3,
		"available_updates": {}
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -49
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Plus RGBW - Profile "RGBW"

#### /shelly

```
{
	"name": "Shelly Plus RGBW",
	"id": "shellyplusrgbw-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 1,
	"model": "SNDC-0D4P10WW",
	"gen": 2,
	"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
	"ver": "0.99.99-plusrgbwsamples0",
	"app": "PlusRGBW",
	"auth_en": false,
	"auth_domain": null,
	"profile": "rgbw",
	"hf": 129564,
	"hmf": 114712,
	"fsf": 98304
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		},
		"observer": {
			"enable": false
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"invert": false
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplusrgbw-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplusrgbw-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"rgbw:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"default": {
			"brightness": 50.0,
			"transition": 3.0,
			"rgb": [
				0.0,
				0.0,
				50.0
			],
			"white": 50.0
		},
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"button_presets": {
			"double_click": 50.0,
			"triple_click": 100.0
		},
		"fade_rate": 10.0,
		"in_mode": "dim"
	},
	"sys": {
		"device": {
			"name": "Shelly Plus RGBW",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20230518-094154/0.99.99-plusrgbwsamples0-g9f5a998",
			"discoverable": true,
			"eco_mode": false,
			"profile": "rgbw"
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
			"ssid": "ShellyPlusRGBW-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"mqtt": {
		"connected": false
	},
	"rgbw:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"rgb": [
			0.0,
			0.0,
			50.0
		],
		"brightness": 50.0,
		"white": 50.0,
		"temperature": {
			"tC": 52.1,
			"tF": 125.8
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1693410358
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.6
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "17:46",
		"unixtime": 1693410361,
		"uptime": 13,
		"ram_size": 242908,
		"ram_free": 128600,
		"fs_size": 458752,
		"fs_free": 98304,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 4,
		"webhook_rev": 4,
		"available_updates": {}
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -49
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Plus Smoke (battery operated)

#### /shelly

```
{
	"name": "Test - Shelly Plus Smoke",
	"id": "shellyplussmoke-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SNSN-0031Z",
	"gen": 2,
	"fw_id": "20221209-120346/0.12.99-smokeprod0-ga62134d",
	"ver": "0.12.99-smokeprod0",
	"app": "PlusSmoke",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"devicepower:0": {},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyplussmoke-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellyplussmoke-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false
	},
	"smoke:0": {
		"id": 0,
		"name": null
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Plus Smoke",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20221209-120346/0.12.99-smokeprod0-ga62134d",
			"discoverable": true
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
		"sleep": {
			"wakeup_period": 86400
		},
		"cfg_rev": 13
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPlusSmoke-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false
		},
		"sta": {
			"ssid": "SSID",
			"is_open": false,
			"enable": true,
			"ipv4mode": "static",
			"ip": "192.168.33.1",
			"netmask": "255.255.255.0",
			"gw": "192.168.33.2",
			"nameserver": "192.168.33.2"
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
	},
	"ws": {
		"enable": true,
		"server": "ws://192.168.33.3:8080/shelly/wsevent",
		"ssl_ca": "*"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"devicepower:0": {
		"id": 0,
		"battery": {
			"V": 3.0,
			"percent": 100
		}
	},
	"mqtt": {
		"connected": false
	},
	"smoke:0": {
		"id": 0,
		"alarm": false,
		"mute": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "07:29",
		"unixtime": 1673504961,
		"uptime": 39,
		"ram_size": 235880,
		"ram_free": 161580,
		"fs_size": 458752,
		"fs_free": 126976,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"webhook_rev": 0,
		"available_updates": {},
		"wakeup_reason": {
			"boot": "poweron",
			"cause": "setup"
		},
		"wakeup_period": 86400
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -61
	},
	"ws": {
		"connected": false
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
	"name": "Test - Shelly Pro 2",
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
				"name": "Test - Shelly Pro 2",
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

### Shelly Pro 3

#### /shelly

### /rpc/Shelly.GetConfig

```
{
   "ble":{
      "enable":false
   },
   "cloud":{
      "enable":false,
      "server":"iot.shelly.cloud:6012/jrpc"
   },
   "mqtt":{
      "enable":false,
      "rpc_ntf":"true",
      "status_ntf":"false"
   },
   "sys":{
      "cfg_rev":7,
      "device":{
         "name":"testbed-shellypro3",
         "mac":"84CCA87CD6EC",
         "fw_id":"20220617-112519/0.10.3-g7c89a05",
         "eco_mode":"false"
      },
      "location":{
         "tz":"Europe/Berlin",
         "lat":49.86571,
         "lon":8.62604
      },
      "sntp":{
         "server":"time.google.com"
      },
      "debug":{
         "mqtt":{
            "enable":false
         },
         "websocket":{
            "enable":false
         },
         "udp":null
      },
      "ui_data":null,
      "rpc_udp":{
         
      }
   },
   "wifi":{
      "ap":{
         "ssid":"ShellyPro3-84CCA87CD6EC",
         "is_open":false
      },
      "sta":{
         "ssid":"TurtlePineHouse",
         "is_open":false,
         "ipv4mode":"dhcp"
      },
      "sta1":{
         "is_open":true,
         "ipv4mode":"dhcp"
      }
   },
   "input:0":{
      "id":"0.0",
      "type":"switch",
      "invert":false
   },
   "input:1":{
      "id":"1.0",
      "type":"switch",
      "invert":false
   },
   "input:2":{
      "id":"2.0",
      "type":"switch",
      "invert":false
   },
   "switch:0":{
      "id":"0.0",
      "in_mode":"follow",
      "initial_state":"match_input",
      "auto_on":false,
      "auto_on_delay":60.0,
      "auto_off":false,
      "auto_off_delay":60.0
   },
   "switch:1":{
      "id":"1.0",
      "in_mode":"follow",
      "initial_state":"match_input",
      "auto_on":false,
      "auto_on_delay":60.0,
      "auto_off":false,
      "auto_off_delay":60.0
   },
   "switch:2":{
      "id":"2.0",
      "in_mode":"follow",
      "initial_state":"match_input",
      "auto_on":false,
      "auto_on_delay":60.0,
      "auto_off":false,
      "auto_off_delay":60.0
   }
}
```

### Shelly Pro 4PM

#### /shelly

```
{
	"name": "Test - 4Pro",
	"id": "shellypro4pm-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPSW-004PE16EU",
	"gen": 2,
	"fw_id": "20220302-144124/0.10.0-beta6-g15be642",
	"ver": "0.10.0-beta6",
	"app": "Pro4PM",
	"auth_en": false,
	"auth_domain": null
}
```

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

### Shelly Pro 3EM

#### /shelly

```
{
	"name": "Test - Shelly Pro 3EM",
	"id": "shellypro3em-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"model": "SPEM-003CEBEU",
	"gen": 2,
	"fw_id": "20221221-160023/0.12.1-ga178961",
	"ver": "0.12.1",
	"app": "Pro3EM",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": true
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"em:0": {
		"id": 0,
		"name": null,
		"blink_mode_selector": "active_energy",
		"phase_selector": "all",
		"monitor_phase_sequence": false
	},
	"emdata:0": {},
	"eth": {
		"enable": true,
		"ipv4mode": "dhcp",
		"ip": null,
		"netmask": null,
		"gw": null,
		"nameserver": null
	},
	"modbus": {
		"enable": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellypro3em-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellypro3em-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Pro 3EM",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20221221-160023/0.12.1-ga178961",
			"discoverable": true,
			"eco_mode": true,
			"addon_type": null
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
	"temperature:0": {
		"id": 0,
		"name": null,
		"report_thr_C": 5.0,
		"offset_C": 0.0
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPro3EM-XXXXXXXXXXXX",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"em:0": {
		"id": 0,
		"a_current": 0.027,
		"a_voltage": 0.1,
		"a_act_power": -0.0,
		"a_aprt_power": 0.0,
		"a_pf": 1.0,
		"b_current": 0.028,
		"b_voltage": 0.1,
		"b_act_power": -0.0,
		"b_aprt_power": 0.0,
		"b_pf": 1.0,
		"c_current": 0.028,
		"c_voltage": 233.6,
		"c_act_power": 0.7,
		"c_aprt_power": 6.6,
		"c_pf": 1.0,
		"n_current": null
	},
	"emdata:0": {
		"id": 0
	},
	"eth": {
		"ip": null
	},
	"modbus": {},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "07:43",
		"unixtime": 1673505837,
		"uptime": 113,
		"ram_size": 232616,
		"ram_free": 122460,
		"fs_size": 524288,
		"fs_free": 172032,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"webhook_rev": 0,
		"available_updates": {}
	},
	"temperature:0": {
		"id": 0,
		"tC": 34.5,
		"tF": 94.1
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -58
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Pro DualCover PM

#### /shelly

```
{
	"name": "Shelly Pro DualCover PM",
	"id": "shellypro2cover-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 0,
	"model": "SPSH-002PE16EU",
	"gen": 2,
	"fw_id": "20230803-125625/1.0.0-gaec0744",
	"ver": "1.0.0",
	"app": "Pro4PM",
	"auth_en": false,
	"auth_domain": null
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": true,
		"rpc": {
			"enable": true
		},
		"observer": {
			"enable": false
		}
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"cover:0": {
		"id": 0,
		"name": null,
		"motor": {
			"idle_power_thr": 2.0,
			"idle_confirm_period": 0.25
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
		"undervoltage_limit": 0,
		"current_limit": 16.0,
		"obstruction_detection": {
			"enable": false,
			"direction": "both",
			"action": "stop",
			"power_thr": 1000,
			"holdoff": 1.0
		}
	},
	"cover:1": {
		"id": 1,
		"name": null,
		"motor": {
			"idle_power_thr": 2.0,
			"idle_confirm_period": 0.25
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
		"undervoltage_limit": 0,
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
		"client_id": "shellypro2cover-XXXXXXXXXXXX",
		"user": null,
		"topic_prefix": "shellypro2cover-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Shelly Pro DualCover PM",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20230803-125625/1.0.0-gaec0744",
			"discoverable": true,
			"eco_mode": true
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
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
	"ui": {
		"idle_brightness": 30
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyPro2Cover-XXXXXXXXXXXX",
			"is_open": true,
			"enable": true,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"cover:0": {
		"id": 0,
		"source": "init",
		"state": "stopped",
		"apower": 0.0,
		"voltage": 235.1,
		"current": 0.0,
		"pf": 0.0,
		"freq": 50.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1693411608
		},
		"temperature": {
			"tC": 31.9,
			"tF": 89.3
		},
		"pos_control": false,
		"last_direction": null
	},
	"cover:1": {
		"id": 1,
		"source": "init",
		"state": "stopped",
		"apower": 0.0,
		"voltage": 234.9,
		"current": 0.0,
		"pf": 0.0,
		"freq": 50.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1693411608
		},
		"temperature": {
			"tC": 31.9,
			"tF": 89.3
		},
		"pos_control": false,
		"last_direction": null
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
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "18:06",
		"unixtime": 1693411608,
		"uptime": 83,
		"ram_size": 255676,
		"ram_free": 72108,
		"fs_size": 524288,
		"fs_free": 196608,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {}
	},
	"ui": {},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -58
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Pro RGBWW PM - Profile cctx2

#### /shelly

```
{
	"name": "Test - Shelly Pro RGBWW PM",
	"id": "shellyprorgbwwpm-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "SPDC-0D5PE16EU",
	"gen": 2,
	"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
	"ver": "1.4.99-prorgbwwpmsamples1",
	"app": "ProRGBWWPM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "cctx2"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": false
		},
		"observer": {
			"enable": false
		}
	},
	"bthome": {},
	"cct:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"ct": 4500,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"ct_range": [
			2700,
			6500
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100,
				"ct": 4500
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"cct:1": {
		"id": 1,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"ct": 4500,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"ct_range": [
			2700,
			6500
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100,
				"ct": 4500
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"cloud": {
		"enable": false,
		"server": "shelly-api-eu.shelly.cloud:6022/jrpc"
	},
	"eth": {
		"enable": true,
		"server_mode": false,
		"ipv4mode": "dhcp",
		"ip": null,
		"netmask": null,
		"gw": null,
		"nameserver": null
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:4": {
		"id": 4,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyprorgbwwpm-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellyprorgbwwpm-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Pro RGBWW PM",
			"mac": "000000000000",
			"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
			"discoverable": true,
			"profile": "cctx2"
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
			"mqtt": {
				"enable": false
			},
			"websocket": {
				"enable": false
			},
			"file_log": {
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
			"ssid": "ShellyProRGBWWPM-000000000000",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"bthome": {
		"errors": [
			"bluetooth_disabled"
		]
	},
	"cct:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 50,
		"ct": 4500,
		"temperature": {
			"tC": 41.0,
			"tF": 105.7
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207000
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"cct:1": {
		"id": 1,
		"source": "init",
		"output": false,
		"brightness": 50,
		"ct": 4500,
		"temperature": {
			"tC": 41.0,
			"tF": 105.7
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207000
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"cloud": {
		"connected": false
	},
	"eth": {
		"ip": null
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"input:4": {
		"id": 4,
		"state": null
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "18:10",
		"unixtime": 1725207039,
		"uptime": 25,
		"ram_size": 249456,
		"ram_free": 109616,
		"fs_size": 524288,
		"fs_free": 192512,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 1,
		"webhook_rev": 1,
		"available_updates": {},
		"reset_reason": 3
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -62
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Pro RGBWW PM - Profile light

#### /shelly

```
{
	"name": "Test - Shelly Pro RGBWW PM",
	"id": "shellyprorgbwwpm-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "SPDC-0D5PE16EU",
	"gen": 2,
	"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
	"ver": "1.4.99-prorgbwwpmsamples1",
	"app": "ProRGBWWPM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "light"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": false
		},
		"observer": {
			"enable": false
		}
	},
	"bthome": {},
	"cloud": {
		"enable": false,
		"server": "shelly-api-eu.shelly.cloud:6022/jrpc"
	},
	"eth": {
		"enable": true,
		"server_mode": false,
		"ipv4mode": "dhcp",
		"ip": null,
		"netmask": null,
		"gw": null,
		"nameserver": null
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:4": {
		"id": 4,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"light:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"light:1": {
		"id": 1,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"light:2": {
		"id": 2,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"light:3": {
		"id": 3,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"light:4": {
		"id": 4,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyprorgbwwpm-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellyprorgbwwpm-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Pro RGBWW PM",
			"mac": "000000000000",
			"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
			"discoverable": true,
			"profile": "light"
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
			"mqtt": {
				"enable": false
			},
			"websocket": {
				"enable": false
			},
			"file_log": {
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
			"ssid": "ShellyProRGBWWPM-000000000000",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"bthome": {
		"errors": [
			"bluetooth_disabled"
		]
	},
	"cloud": {
		"connected": false
	},
	"eth": {
		"ip": null
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"input:4": {
		"id": 4,
		"state": null
	},
	"light:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 50,
		"temperature": {
			"tC": 40.2,
			"tF": 104.4
		},
		"aenergy": {
			"total": 1.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725202140
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"light:1": {
		"id": 1,
		"source": "init",
		"output": false,
		"brightness": 89,
		"temperature": {
			"tC": 40.2,
			"tF": 104.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725202140
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"light:2": {
		"id": 2,
		"source": "init",
		"output": false,
		"brightness": 50,
		"temperature": {
			"tC": 40.2,
			"tF": 104.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725202140
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"light:3": {
		"id": 3,
		"source": "init",
		"output": false,
		"brightness": 89,
		"temperature": {
			"tC": 40.2,
			"tF": 104.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725202140
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"light:4": {
		"id": 4,
		"source": "init",
		"output": false,
		"brightness": 50,
		"temperature": {
			"tC": 40.2,
			"tF": 104.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725202140
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "16:49",
		"unixtime": 1725202175,
		"uptime": 1446,
		"ram_size": 249252,
		"ram_free": 104392,
		"fs_size": 524288,
		"fs_free": 192512,
		"cfg_rev": 11,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {},
		"reset_reason": 1
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -63
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Pro RGBWW PM - Profile rgbcct

#### /shelly

```
{
	"name": "Test - Shelly Pro RGBWW PM",
	"id": "shellyprorgbwwpm-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "SPDC-0D5PE16EU",
	"gen": 2,
	"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
	"ver": "1.4.99-prorgbwwpmsamples1",
	"app": "ProRGBWWPM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "rgbcct"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": false
		},
		"observer": {
			"enable": false
		}
	},
	"bthome": {},
	"cct:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"ct": 4500,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"ct_range": [
			2700,
			6500
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100,
				"ct": 4500
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"cloud": {
		"enable": false,
		"server": "shelly-api-eu.shelly.cloud:6022/jrpc"
	},
	"eth": {
		"enable": true,
		"server_mode": false,
		"ipv4mode": "dhcp",
		"ip": null,
		"netmask": null,
		"gw": null,
		"nameserver": null
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:4": {
		"id": 4,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyprorgbwwpm-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellyprorgbwwpm-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"rgb:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"rgb": [
				255,
				255,
				255
			],
			"active_between": []
		},
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100,
				"rgb": [
					255,
					255,
					255
				]
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Pro RGBWW PM",
			"mac": "000000000000",
			"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
			"discoverable": true,
			"profile": "rgbcct"
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
			"mqtt": {
				"enable": false
			},
			"websocket": {
				"enable": false
			},
			"file_log": {
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
			"ssid": "ShellyProRGBWWPM-000000000000",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"bthome": {
		"errors": [
			"bluetooth_disabled"
		]
	},
	"cct:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 50,
		"ct": 4500,
		"temperature": {
			"tC": 40.5,
			"tF": 104.9
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207360
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.7
	},
	"cloud": {
		"connected": false
	},
	"eth": {
		"ip": null
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"input:4": {
		"id": 4,
		"state": null
	},
	"mqtt": {
		"connected": false
	},
	"rgb:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"rgb": [
			0,
			0,
			128
		],
		"brightness": 50,
		"temperature": {
			"tC": 40.5,
			"tF": 104.9
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207360
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.7
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "18:16",
		"unixtime": 1725207374,
		"uptime": 130,
		"ram_size": 249260,
		"ram_free": 107680,
		"fs_size": 524288,
		"fs_free": 192512,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 2,
		"webhook_rev": 2,
		"available_updates": {},
		"reset_reason": 3
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -67
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Pro RGBWW PM - Profile rgbx2light

#### /shelly

```
{
	"name": "Test - Shelly Pro RGBWW PM",
	"id": "shellyprorgbwwpm-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "SPDC-0D5PE16EU",
	"gen": 2,
	"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
	"ver": "1.4.99-prorgbwwpmsamples1",
	"app": "ProRGBWWPM",
	"auth_en": false,
	"auth_domain": null,
	"profile": "rgbx2light"
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": false
		},
		"observer": {
			"enable": false
		}
	},
	"bthome": {},
	"cloud": {
		"enable": false,
		"server": "shelly-api-eu.shelly.cloud:6022/jrpc"
	},
	"eth": {
		"enable": true,
		"server_mode": false,
		"ipv4mode": "dhcp",
		"ip": null,
		"netmask": null,
		"gw": null,
		"nameserver": null
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"input:4": {
		"id": 4,
		"name": null,
		"type": "button",
		"enable": true,
		"invert": false
	},
	"light:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"light:1": {
		"id": 1,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"active_between": []
		},
		"range_map": [
			0,
			100
		],
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyprorgbwwpm-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellyprorgbwwpm-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"rgb:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3,
		"night_mode": {
			"enable": false,
			"brightness": 50,
			"rgb": [
				255,
				255,
				255
			],
			"active_between": []
		},
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100,
				"rgb": [
					255,
					255,
					255
				]
			}
		},
		"in_mode": "dim",
		"current_limit": 6.0,
		"power_limit": 350,
		"voltage_limit": 30
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Pro RGBWW PM",
			"mac": "000000000000",
			"fw_id": "20240816-120610/1.4.99-prorgbwwsamples1-ge2c94d2",
			"discoverable": true,
			"profile": "rgbx2light"
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.00000,
			"lon": 0.00000
		},
		"debug": {
			"level": 2,
			"file_level": null,
			"mqtt": {
				"enable": false
			},
			"websocket": {
				"enable": false
			},
			"file_log": {
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
		"cfg_rev": 14
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyProRGBWWPM-000000000000",
			"is_open": true,
			"enable": false,
			"range_extender": {
				"enable": false
			}
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
	},
	"ws": {
		"enable": false,
		"server": null,
		"ssl_ca": "ca.pem"
	}
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"bthome": {
		"errors": [
			"bluetooth_disabled"
		]
	},
	"cloud": {
		"connected": false
	},
	"eth": {
		"ip": null
	},
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"input:2": {
		"id": 2,
		"state": null
	},
	"input:3": {
		"id": 3,
		"state": null
	},
	"input:4": {
		"id": 4,
		"state": null
	},
	"light:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 50,
		"temperature": {
			"tC": 42.4,
			"tF": 108.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207780
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"light:1": {
		"id": 1,
		"source": "init",
		"output": false,
		"brightness": 50,
		"temperature": {
			"tC": 42.4,
			"tF": 108.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207780
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"mqtt": {
		"connected": false
	},
	"rgb:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"rgb": [
			0,
			0,
			128
		],
		"brightness": 50,
		"temperature": {
			"tC": 42.4,
			"tF": 108.4
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1725207780
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 24.8
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "18:23",
		"unixtime": 1725207790,
		"uptime": 165,
		"ram_size": 249092,
		"ram_free": 103096,
		"fs_size": 524288,
		"fs_free": 192512,
		"cfg_rev": 14,
		"kvs_rev": 0,
		"schedule_rev": 3,
		"webhook_rev": 3,
		"available_updates": {},
		"reset_reason": 3
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -57
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Wall Display

#### /shelly

```
{
	"id": "ShellyWallDisplay-000000000000",
	"mac": "000000000000",
	"model": "SAWD-0A1XX10EU1",
	"gen": 2,
	"fw_id": "20240715-190913/2.0.0-c0bdf3b8",
	"ver": "2.0.0",
	"app": "WallDisplay",
	"auth_en": false,
	"uptime": 538423,
	"app_uptime": 538321,
	"discoverable": false,
	"cfg_rev": 106,
	"schedule_rev": 0,
	"webhook_rev": 0,
	"platform": "vXD110001",
	"serial": "1234567890abc",
	"batch_id": "38467",
	"batch_date": 230503,
	"available_updates": {},
	"restart_required": false,
	"unixtime": 1721726817,
	"relay_in_thermostat": true,
	"sensor_in_thermostat": false
}
```

#### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": true,
		"observer": {
			"enable": false
		},
		"rpc": {
			"enable": true
		}
	},
	"wifi": {
		"sta": {
			"enable": true,
			"ssid": "SSID",
			"roam_interval": 900,
			"is_open": false,
			"ipv4mode": "dhcp",
			"ip": "192.168.1.2",
			"netmask": "255.255.255.0",
			"gw": "192.168.1.1",
			"nameserver": "192.168.1.1"
		}
	},
	"switch:0": {
		"id": 0,
		"auto_on": false,
		"auto_on_delay": 0,
		"auto_off": false,
		"auto_off_delay": 0,
		"initial_state": "restore_last",
		"in_mode": "detached",
		"name": "Heizkreis WZ/Küche"
	},
	"input:0": {
		"type": "disabled",
		"id": 0,
		"invert": false,
		"factory_reset": true,
		"name": null
	},
	"temperature:0": {
		"report_thr_C": 0.5,
		"id": 0,
		"name": null,
		"offset_C": 0
	},
	"humidity:0": {
		"id": 0,
		"report_thr": 1,
		"offset": 0,
		"name": null
	},
	"illuminance:0": {
		"id": 0,
		"bright_thr": 200,
		"dark_thr": 30,
		"name": null
	},
	"ui": {
		"screen_saver": {
			"enable": true,
			"timeout": 20,
			"priority_element": "TEMPERATURE"
		},
		"lock_type": "none",
		"disable_gestures_when_locked": false,
		"show_favourites": true,
		"show_main_sensor_graph": false,
		"use_F": false,
		"brightness": {
			"auto": true,
			"level": 70,
			"auto_off": {
				"enable": true,
				"by_lux": true
			}
		},
		"screen_off_when_idle": true,
		"relay_state_overlay": {
			"enable": true,
			"always_visible": false
		}
	},
	"sys": {
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.0000,
			"lon": 0.0000
		},
		"debug": {
			"websocket": {
				"enable": true
			},
			"mqtt": {
				"enable": false
			},
			"logs": {
				"Generic": false,
				"Bluetooth": false,
				"Cloud": false,
				"Interface": false,
				"Media": true,
				"MQTT": true,
				"Network": false,
				"RPC": false,
				"Thermostat": true,
				"Screen": false,
				"UART": true,
				"Webhooks": false,
				"WebSocket": true
			}
		},
		"device": {
			"name": "Wall Display Wohnzimmer",
			"mac": "000000000000",
			"fw_id": "20240715-190913/2.0.0-c0bdf3b8",
			"discoverable": false,
			"eco_mode": false
		},
		"sntp": {
			"server": "time.google.com"
		},
		"cfg_rev": 106
	},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"mqtt": {
		"enable": false,
		"client_id": "ShellyWallDisplay-000000000000",
		"topic_prefix": "ShellyWallDisplay-000000000000"
	},
	"ws": {
		"enable": false,
		"ssl_ca": "ca.pem"
	},
	"media": {
		"rev": 0
	},
	"thermostat:0": {
		"id": 0,
		"enable": false,
		"sensor": "shelly+1://shellyht-C45BBE77E62F/c/switch:0",
		"type": "heating",
		"actuator": "shelly://shellywalldisplay-000000000000/c/switch:0",
		"hysteresis": 0.5,
		"invert_output": false,
		"display_unit": "C",
		"target_C": 5,
		"name": null
	},
	"awaiting_auth_code": false
}
```

#### /rpc/Shelly.GetStatus

```
{
	"ble": {},
	"cloud": {
		"connected": true
	},
	"mqtt": {
		"connected": false
	},
	"temperature:0": {
		"id": 0,
		"tC": 29,
		"tF": 84.2
	},
	"humidity:0": {
		"id": 0,
		"rh": 47.5
	},
	"illuminance:0": {
		"id": 0,
		"lux": 150,
		"illumination": "twilight"
	},
	"switch:0": {
		"id": 0,
		"output": false,
		"source": "Auto power on (restore_last)"
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"sys": {
		"id": "ShellyWallDisplay-0008222E8DEC",
		"mac": "0008222E8DEC",
		"model": "SAWD-0A1XX10EU1",
		"gen": 2,
		"fw_id": "20240715-190913/2.0.0-c0bdf3b8",
		"ver": "2.0.0",
		"app": "WallDisplay",
		"auth_en": false,
		"uptime": 525554,
		"app_uptime": 525452,
		"discoverable": false,
		"cfg_rev": 106,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"platform": "vXD110001",
		"serial": "SAWD8963F778H",
		"batch_id": "38467",
		"batch_date": 230503,
		"available_updates": {},
		"restart_required": false,
		"unixtime": 1721713949,
		"relay_in_thermostat": true,
		"sensor_in_thermostat": false
	},
	"wifi": {
		"sta_ip": "192.168.1.2",
		"status": "got ip",
		"mac": "00:00:00:00:00:00",
		"ssid": "SSID",
		"rssi": -52,
		"netmask": "255.255.255.0",
		"gw": "192.168.1.1",
		"nameserver": "192.168.1.1"
	},
	"media": {
		"total_size": 0,
		"total_size_h": "0.000 B",
		"item_counts": {
			"audio": 0,
			"photo": 0,
			"video": 0
		},
		"playback": {
			"enable": false,
			"media_type": "RADIO",
			"media_meta": {
				"title": "Radio Khatereh"
			}
		}
	},
	"devicepower:0": {
		"id": 0,
		"external": {
			"present": true
		}
	},
	"awaiting_auth_code": false,
	"thermostat:0": {
		"id": 0,
		"enable": false,
		"target_C": 5,
		"current_C": 27.5,
		"output": false,
		"schedules": {
			"enable": false
		}
	}
}
```
