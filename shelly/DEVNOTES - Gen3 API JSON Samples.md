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
