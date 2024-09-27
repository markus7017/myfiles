# Gen 3 Device API JSON Sample Data

## Gen3 Series

### Shelly 1 G3

#### /shelly
```
{
	"name": "Test - Shelly 1 G3",
	"id": "shelly1g3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3SW-001X16EU",
	"gen": 3,
	"fw_id": "20240331-104633/1.2.2-1g3prod0-g082bd47",
	"ver": "1.2.2-1g3prod0",
	"app": "S1G3",
	"auth_en": false,
	"auth_domain": null
}
```

##### /rpc/Shelly.GetConfig

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
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1g3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1g3-000000000000",
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
	"sys": {
		"device": {
			"name": "Test - Shelly 1 G3",
			"mac": "000000000000",
			"fw_id": "20240331-104633/1.2.2-1g3prod0-g082bd47",
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
			"server": "time.google.com"
		},
		"cfg_rev": 13
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1G3-000000000000",
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
			"tC": 44.2,
			"tF": 111.6
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "13:12",
		"unixtime": 1719573132,
		"uptime": 631,
		"ram_size": 259480,
		"ram_free": 150992,
		"fs_size": 1048576,
		"fs_free": 708608,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {
			"stable": {
				"version": "1.3.3"
			}
		},
		"reset_reason": 1
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -55
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly 1PM G3

#### /shelly
```
{
	"name": "Test - Shelly 1PM G3",
	"id": "shelly1pmg3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3SW-001P16EU",
	"gen": 3,
	"fw_id": "20240331-111152/1.2.2-1pmg3prod0-g34035ae",
	"ver": "1.2.2-1pmg3prod0",
	"app": "S1PMG3",
	"auth_en": false,
	"auth_domain": null
}
```

##### /rpc/Shelly.GetConfig

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
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly1pmg3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly1pmg3-000000000000",
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
		"auto_off_delay": 60.0,
		"power_limit": 4480,
		"voltage_limit": 280,
		"autorecover_voltage_errors": false,
		"current_limit": 16.0
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 1PM G3",
			"mac": "000000000000",
			"fw_id": "20240331-111152/1.2.2-1pmg3prod0-g34035ae",
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
			"server": "time.google.com"
		},
		"cfg_rev": 11
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly1PMG3-000000000000",
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
		"voltage": 236.0,
		"freq": 50.0,
		"current": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1719574860
		},
		"ret_aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1719574860
		},
		"temperature": {
			"tC": 44.1,
			"tF": 111.4
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "13:41",
		"unixtime": 1719574869,
		"uptime": 1350,
		"ram_size": 258856,
		"ram_free": 146216,
		"fs_size": 1048576,
		"fs_free": 708608,
		"cfg_rev": 11,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {
			"stable": {
				"version": "1.3.3"
			}
		},
		"reset_reason": 1
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

### Shelly Plus i4 AC G3

#### /shelly
```
{
	"name": "Test - Shelly i4 G3",
	"id": "shellyi4g3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3SN-0024X",
	"gen": 3,
	"fw_id": "20240412-053934/1.2.2-i4g3prod0-g26aff06",
	"ver": "1.2.2-i4g3prod0",
	"app": "I4G3",
	"auth_en": false,
	"auth_domain": null
}
```

##### /rpc/Shelly.GetConfig

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
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"input:2": {
		"id": 2,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"input:3": {
		"id": 3,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellyi4g3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellyi4g3-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly i4 G3",
			"mac": "000000000000",
			"fw_id": "20240412-053934/1.2.2-i4g3prod0-g26aff06",
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
			"server": "time.google.com"
		},
		"cfg_rev": 11
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyI4G3-000000000000",
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
		"mac": "000000000000",
		"restart_required": false,
		"time": "13:43",
		"unixtime": 1719575032,
		"uptime": 86,
		"ram_size": 260256,
		"ram_free": 150676,
		"fs_size": 1048576,
		"fs_free": 712704,
		"cfg_rev": 11,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {
			"stable": {
				"version": "1.3.3"
			}
		},
		"reset_reason": 1
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

### Shelly Plus Dimmer 0/1-10V PM G3

#### /shelly
```
{
	"name": "Test - Shelly Dimmer 0/1-10V PM Gen3",
	"id": "shelly0110dimg3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3DM-0010WW",
	"gen": 3,
	"fw_id": "20240416-123934/1.2.99-dimmer0110vpmg3prod0-g189dba8",
	"ver": "1.2.99-dimmer0110vpmg3prod0",
	"app": "Dimmer0110VPMG3",
	"auth_en": false,
	"auth_domain": null
}
```

##### /rpc/Shelly.GetConfig

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
	"bthome": {},
	"cloud": {
		"enable": true,
		"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
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
	"light:0": {
		"id": 0,
		"name": null,
		"initial_state": "restore_last",
		"auto_on": false,
		"auto_on_delay": 60.0,
		"auto_off": false,
		"auto_off_delay": 60.0,
		"transition_duration": 3.0,
		"min_brightness_on_toggle": 3.0,
		"night_mode": {
			"enable": false,
			"brightness": 50.0,
			"active_between": []
		},
		"range_map": [
			0.0,
			100.0
		],
		"op_mode": 0,
		"button_fade_rate": 3,
		"button_presets": {
			"button_doublepush": {
				"brightness": 100.0
			}
		},
		"in_mode": "dim",
		"current_limit": 16.0,
		"power_limit": 4480,
		"voltage_limit": 280
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly0110dimg3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly0110dimg3-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Dimmer 0/1-10V PM Gen3",
			"mac": "000000000000",
			"fw_id": "20240416-123934/1.2.99-dimmer0110vpmg3prod0-g189dba8",
			"discoverable": true,
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
			"server": "time.google.com"
		},
		"cfg_rev": 13
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly0110DimG3-000000000000",
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
			"observer_disabled"
		]
	},
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
	"light:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"brightness": 50.0,
		"temperature": {
			"tC": 33.3,
			"tF": 91.9
		},
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1719575160
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 234.4
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "13:46",
		"unixtime": 1719575203,
		"uptime": 96,
		"ram_size": 263944,
		"ram_free": 149580,
		"fs_size": 1048576,
		"fs_free": 704512,
		"cfg_rev": 13,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {
			"stable": {
				"version": "1.3.3"
			}
		},
		"reset_reason": 1
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -66
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly 2PM G3 - Switch Mode

#### /shelly
```
{
	"name": "Test - Shelly 2PM G3",
	"id": "shelly2pmg3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3SW-002P16EU",
	"gen": 3,
	"fw_id": "20240712-065434/g96b9806",
	"ver": "1.4.99-dev100685",
	"app": "S2PMG3",
	"auth_en": false,
	"auth_domain": null,
	"profile": "switch"
}
```

##### /rpc/Shelly.GetConfig

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
	"bthome": {},
	"cloud": {
		"enable": false,
		"server": "iot.shelly.cloud:6012/jrpc"
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly2pmg3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly2pmg3-000000000000",
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
		"auto_off_delay": 60.0,
		"power_limit": 2800,
		"voltage_limit": 280,
		"undervoltage_limit": 0,
		"autorecover_voltage_errors": false,
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
		"undervoltage_limit": 0,
		"autorecover_voltage_errors": false,
		"current_limit": 10.0
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 2PM G3",
			"mac": "000000000000",
			"fw_id": "20240712-065434/g96b9806",
			"discoverable": true,
			"eco_mode": true,
			"profile": "switch",
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
			"file_log": {
				"enable": false
			},
			"udp": {
				"addr": ""
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
		"cfg_rev": 9
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly2PMG3-000000000000",
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
			"observer_disabled"
		]
	},
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
	"knx": {},
	"mqtt": {
		"connected": false
	},
	"switch:0": {
		"id": 0,
		"source": "init",
		"output": false,
		"apower": 0.0,
		"voltage": 222.9,
		"freq": 50.0,
		"current": 0.0,
		"pf": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1721626620
		},
		"ret_aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1721626620
		},
		"temperature": {
			"tC": 42.8,
			"tF": 109.1
		}
	},
	"switch:1": {
		"id": 1,
		"source": "init",
		"output": false,
		"apower": 0.0,
		"voltage": 223.0,
		"freq": 50.0,
		"current": 0.0,
		"pf": 0.0,
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1721626620
		},
		"ret_aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1721626620
		},
		"temperature": {
			"tC": 42.8,
			"tF": 109.1
		}
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "07:37",
		"unixtime": 1721626626,
		"uptime": 97,
		"ram_size": 250232,
		"ram_free": 78628,
		"fs_size": 1048576,
		"fs_free": 573440,
		"cfg_rev": 9,
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
		"rssi": -54
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly 2PM G3 - Cover Mode

#### /shelly
```
{
	"name": "Test - Shelly 2PM G3",
	"id": "shelly2pmg3-000000000000",
	"mac": "000000000000",
	"slot": 1,
	"model": "S3SW-002P16EU",
	"gen": 3,
	"fw_id": "20240712-065434/g96b9806",
	"ver": "1.4.99-dev100685",
	"app": "S2PMG3",
	"auth_en": false,
	"auth_domain": null,
	"profile": "cover"
}
```

##### /rpc/Shelly.GetConfig

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
	"bthome": {},
	"cloud": {
		"enable": false,
		"server": "iot.shelly.cloud:6012/jrpc"
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
		"power_limit": 2800,
		"voltage_limit": 280,
		"undervoltage_limit": 0,
		"current_limit": 10.0,
		"obstruction_detection": {
			"enable": false,
			"direction": "both",
			"action": "stop",
			"power_thr": 1000,
			"holdoff": 1.0
		},
		"slat": {
			"enable": false,
			"open_time": 1.5,
			"close_time": 1.5,
			"step": 20,
			"retain_pos": false,
			"precise_ctl": false
		}
	},
	"input:0": {
		"id": 0,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"input:1": {
		"id": 1,
		"name": null,
		"type": "switch",
		"enable": true,
		"invert": false,
		"factory_reset": true
	},
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shelly2pmg3-000000000000",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shelly2pmg3-000000000000",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly 2PM G3",
			"mac": "000000000000",
			"fw_id": "20240712-065434/g96b9806",
			"discoverable": true,
			"eco_mode": true,
			"profile": "cover",
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
			"file_log": {
				"enable": false
			},
			"udp": {
				"addr": ""
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
		"cfg_rev": 8
	},
	"wifi": {
		"ap": {
			"ssid": "Shelly2PMG3-000000000000",
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
			"observer_disabled"
		]
	},
	"cloud": {
		"connected": false
	},
	"cover:0": {
		"id": 0,
		"source": "init",
		"state": "stopped",
		"apower": 0.0,
		"voltage": 223.4,
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
			"minute_ts": 1721626440
		},
		"temperature": {
			"tC": 43.8,
			"tF": 110.8
		},
		"pos_control": false,
		"last_direction": null
	},
	"input:0": {
		"id": 0,
		"state": false
	},
	"input:1": {
		"id": 1,
		"state": false
	},
	"knx": {},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "000000000000",
		"restart_required": false,
		"time": "07:34",
		"unixtime": 1721626495,
		"uptime": 125,
		"ram_size": 250528,
		"ram_free": 83008,
		"fs_size": 1048576,
		"fs_free": 577536,
		"cfg_rev": 8,
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
		"rssi": -54
	},
	"ws": {
		"connected": false
	}
}
```

### Shelly Dimmer G3

#### /shelly

```
{
	"name": "Test - Shelly Dimmer G3",
	"id": "shellydimmerg3-XXXXXXXXXXXX",
	"mac": "XXXXXXXXXXXX",
	"slot": 0,
	"model": "S3DM-0A101WWL",
	"gen": 2,
	"fw_id": "20240912-104707/g093120a",
	"ver": "1.4.99-dev105812",
	"app": "DimmerG3",
	"auth_en": false,
	"auth_domain": null
}
```

##### /rpc/Shelly.GetConfig

```
{
	"ble": {
		"enable": false,
		"rpc": {
			"enable": false
		}
	},
	"bthome": {},
	"cloud": {
		"enable": false,
		"server": "iot.shelly.cloud:6012/jrpc"
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
	"knx": {
		"enable": false,
		"ia": "15.15.255",
		"routing": {
			"addr": "224.0.23.12:3671"
		}
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
		"current_limit": 2.3,
		"power_limit": 300,
		"undervoltage_limit": 100,
		"voltage_limit": 280
	},
	"mqtt": {
		"enable": false,
		"server": null,
		"client_id": "shellydimmerg3-XXXXXXXXXXXX",
		"user": null,
		"ssl_ca": null,
		"topic_prefix": "shellydimmerg3-XXXXXXXXXXXX",
		"rpc_ntf": true,
		"status_ntf": false,
		"use_client_cert": false,
		"enable_rpc": true,
		"enable_control": true
	},
	"sys": {
		"device": {
			"name": "Test - Shelly Dimmer G3",
			"mac": "XXXXXXXXXXXX",
			"fw_id": "20240912-104707/g093120a",
			"discoverable": true
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
		"cfg_rev": 8
	},
	"wifi": {
		"ap": {
			"ssid": "ShellyDimmerG3-XXXXXXXXXXXX",
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
	"input:0": {
		"id": 0,
		"state": null
	},
	"input:1": {
		"id": 1,
		"state": null
	},
	"knx": {},
	"light:0": {
		"id": 0,
		"source": "",
		"output": false,
		"brightness": 1,
		"temperature": {
			"tC": 37.2,
			"tF": 98.9
		},
		"flags": [
			"uncalibrated"
		],
		"aenergy": {
			"total": 0.0,
			"by_minute": [
				0.0,
				0.0,
				0.0
			],
			"minute_ts": 1727279040
		},
		"apower": 0.0,
		"current": 0.0,
		"voltage": 234.0
	},
	"mqtt": {
		"connected": false
	},
	"sys": {
		"mac": "XXXXXXXXXXXX",
		"restart_required": false,
		"time": "17:44",
		"unixtime": 1727279069,
		"uptime": 177,
		"ram_size": 260740,
		"ram_free": 137248,
		"fs_size": 1048576,
		"fs_free": 544768,
		"cfg_rev": 8,
		"kvs_rev": 0,
		"schedule_rev": 0,
		"webhook_rev": 0,
		"available_updates": {},
		"reset_reason": 3
	},
	"wifi": {
		"sta_ip": "192.168.33.1",
		"status": "got ip",
		"ssid": "SSID",
		"rssi": -47
	},
	"ws": {
		"connected": false
	}
}
```
