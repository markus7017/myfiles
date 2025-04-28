# Gen 4 Device API JSON Sample Data

## Gen4 Series

### Shelly 1 G4

#### /shelly

```
{
	"name": "Test - Shelly 1 G4",
	"id": "shelly1g4-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "S4SW-001X16EU",
	"gen": 4,
	"fw_id": "20250214-121709/1.5.99-g4prod1-gc32c24b",
	"ver": "1.5.99-g4prod1",
	"app": "S1G4",
	"auth_en": false,
	"auth_domain": null,
	"matter": true
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
	"bthome": {},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"jstest": {},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"matter": {
		"enable": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1g4-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1g4-000000000000",
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
		"in_locked": false,
		"initial_state": "match_input",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 1 G4",
			"mac": "000000000000",
			"fw_id": "20250214-121709/1.5.99-g4prod1-gc32c24b",
			"discoverable": true,
			"eco_mode": true,
			"addon_type": null
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.0000,
			"lon": 0.0000
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
			"server": "time.cloudflare.com"
		},
		"cfg_rev": 13
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1G4-000000000000",
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
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"jstest": {
		"state": "fail"
	},
	"knx": {},
	"matter": {
		"num_fabrics": 0,
		"commissionable": true
	},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "WS_in",
		"output": false,
		"temperature": {
			"tC": 38.1,
			"tF": 100.5
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "07:22",
		"unixtime": 1745817775,
		"last_sync_ts": 1745817373,
		"uptime": 411,
		"ram_size": 361552,
		"ram_free": 196368,
		"ram_min_free": 184760,
		"fs_size": 917504,
		"fs_free": 434176,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"btrelay_rev": 0,
		"available_updates": {
			"beta": {
				"version": "1.6.0-beta1"
			}
		},
		"alt": {
			"S1G4ZB": {
				"name": "Shelly 1 Gen4",
				"desc": "Shelly 1 with Zigbee",
				"beta": {
					"version": "1.6.0-beta1",
					"build_id": "20250410-085829/1.6.0-beta1-g2554734"
				}
			}
		},
		"reset_reason": 3,
		"utc_offset": 7200
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -40
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly 1PM G4

#### /shelly

```
{
	"name": "Test - Shelly 1PM G4",
	"id": "shelly1pmg4-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "S4SW-001P16EU",
	"gen": 4,
	"fw_id": "20250214-121706/1.5.99-g4prod1-gc32c24b",
	"ver": "1.5.99-g4prod1",
	"app": "S1PMG4",
	"auth_en": false,
	"auth_domain": null,
	"matter": true
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
	"bthome": {},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"jstest": {},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"matter": {
		"enable": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1pmg4-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1pmg4-000000000000",
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
		"in_locked": false,
		"initial_state": "match_input",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"power_limit": 4480,
		"voltage_limit": 280,
		"autorecover_voltage_errors": false,
		"current_limit": 16.0,
		"reverse": false
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 1PM G4",
			"mac": "000000000000",
			"fw_id": "20250214-121706/1.5.99-g4prod1-gc32c24b",
			"discoverable": true,
			"eco_mode": false,
			"addon_type": null
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.0000,
			"lon": 0.0000
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
			"server": "time.cloudflare.com"
		},
		"cfg_rev": 13
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1PMG4-000000000000",
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
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"jstest": {
		"state": "fail"
	},
	"knx": {},
	"matter": {
		"num_fabrics": 0,
		"commissionable": true
	},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "WS_in",
		"output": false,
		"apower": 0.0,
		"voltage": 235.0,
		"freq": 49.9,
		"current": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1745819100
		},
		"ret_aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1745819100
		},
		"temperature": {
			"tC": 39.1,
			"tF": 102.3
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "07:45",
		"unixtime": 1745819104,
		"last_sync_ts": 1745818953,
		"uptime": 173,
		"ram_size": 359864,
		"ram_free": 189516,
		"ram_min_free": 176596,
		"fs_size": 917504,
		"fs_free": 434176,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"btrelay_rev": 0,
		"available_updates": {
			"beta": {
				"version": "1.6.0-beta1"
			}
		},
		"alt": {
			"S1PMG4ZB": {
				"name": "Shelly 1 PM Gen4",
				"desc": "Shelly 1 PM Gen4 with Zigbee",
				"beta": {
					"version": "1.6.0-beta1",
					"build_id": "20250410-085851/1.6.0-beta1-g2554734"
				}
			}
		},
		"reset_reason": 4,
		"utc_offset": 7200
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

### Shelly 1 Mini G4

#### /shelly

```
{
	"name": "Test - Shelly 1 Mini G4",
	"id": "shelly1minig4-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "S4SW-001X8EU",
	"gen": 4,
	"fw_id": "20250214-121722/1.5.99-g4prod1-gc32c24b",
	"ver": "1.5.99-g4prod1",
	"app": "Mini1G4",
	"auth_en": false,
	"auth_domain": null,
	"matter": true
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
	"bthome": {},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"jstest": {},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"matter": {
		"enable": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1minig4-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1minig4-000000000000",
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
		"in_locked": false,
		"initial_state": "match_input",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 1 Mini G4",
			"mac": "000000000000",
			"fw_id": "20250214-121722/1.5.99-g4prod1-gc32c24b",
			"discoverable": true,
			"eco_mode": true
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.0000,
			"lon": 0.0000
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
			"server": "time.cloudflare.com"
		},
		"cfg_rev": 12
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1MiniG4-000000000000",
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
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"jstest": {
		"state": "fail"
	},
	"knx": {},
	"matter": {
		"num_fabrics": 0,
		"commissionable": true
	},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "WS_in",
		"output": false,
		"temperature": {
			"tC": 46.0,
			"tF": 114.8
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "07:58",
		"unixtime": 1745819923,
		"last_sync_ts": 1745819831,
		"uptime": 118,
		"ram_size": 362592,
		"ram_free": 197320,
		"ram_min_free": 184764,
		"fs_size": 917504,
		"fs_free": 442368,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"btrelay_rev": 0,
		"available_updates": {
			"beta": {
				"version": "1.6.0-beta1"
			}
		},
		"alt": {
			"Mini1G4ZB": {
				"name": "Shelly Mini 1 Gen4",
				"desc": "Shelly Mini 1 Gen4 with Zigbee",
				"beta": {
					"version": "1.6.0-beta1",
					"build_id": "20250410-085755/1.6.0-beta1-g2554734"
				}
			}
		},
		"reset_reason": 3,
		"utc_offset": 7200
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -51
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly 1PM Mini G4

#### /shelly

```
{
	"name": "Test - Shelly 1PM Mini G4",
	"id": "shelly1pmminig4-000000000000",
	"mac": "000000000000",
	"slot": 0,
	"model": "S4SW-001P8EU",
	"gen": 4,
	"fw_id": "20250214-121727/1.5.99-g4prod1-gc32c24b",
	"ver": "1.5.99-g4prod1",
	"app": "Mini1PMG4",
	"auth_en": false,
	"auth_domain": null,
	"matter": true
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
	"bthome": {},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"jstest": {},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"matter": {
		"enable": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1pmminig4-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1pmminig4-000000000000",
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
		"in_locked": false,
		"initial_state": "match_input",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"power_limit": 2240,
		"voltage_limit": 280,
		"autorecover_voltage_errors": false,
		"current_limit": 8.0,
		"reverse": false
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 1PM Mini G4",
			"mac": "000000000000",
			"fw_id": "20250214-121727/1.5.99-g4prod1-gc32c24b",
			"discoverable": true,
			"eco_mode": false
		},
		"location": {
			"tz": "Europe/Berlin",
			"lat": 0.0000,
			"lon": 0.0000
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
			"server": "time.cloudflare.com"
		},
		"cfg_rev": 12
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1PMMiniG4-000000000000",
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
		"connected": true
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"jstest": {
		"state": "fail"
	},
	"knx": {},
	"matter": {
		"num_fabrics": 0,
		"commissionable": true
	},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "WS_in",
		"output": false,
		"apower": 0.0,
		"voltage": 233.1,
		"freq": 49.9,
		"current": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1745820240
		},
		"ret_aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1745820240
		},
		"temperature": {
			"tC": 49.8,
			"tF": 121.7
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "08:04",
		"unixtime": 1745820287,
		"last_sync_ts": 1745820171,
		"uptime": 143,
		"ram_size": 361216,
		"ram_free": 195876,
		"ram_min_free": 177700,
		"fs_size": 917504,
		"fs_free": 442368,
		"cfg_rev": 12,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"btrelay_rev": 0,
		"available_updates": {
			"beta": {
				"version": "1.6.0-beta1"
			}
		},
		"alt": {
			"Mini1PMG4ZB": {
				"name": "Shelly Mini 1 PM Gen4",
				"desc": "Shelly Mini 1 PM Gen4 with Zigbee",
				"beta": {
					"version": "1.6.0-beta1",
					"build_id": "20250410-085746/1.6.0-beta1-g2554734"
				}
			}
		},
		"reset_reason": 3,
		"utc_offset": 7200
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -54
	},
	"ws": {
		"connected": false
	}
}
```
