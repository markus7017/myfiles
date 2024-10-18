# BLU Device API JSON Sample Data

### BLU TRV

#### /rpc/Shelly.GetComponents via BLU Gateway G3
```
{
	"components": [
		{
			"key": "ble",
			"status": {},
			"config": {
				"enable": true,
				"rpc": {
					"enable": true
				}
			}
		},
		{
			"key": "blugw",
			"status": {},
			"config": {
				"sys_led_enable": false
			}
		},
		{
			"key": "blutrv:200",
			"status": {
				"id": 200,
				"rssi": -59,
				"battery": 100,
				"packet_id": 141,
				"last_updated_ts": 1729073263,
				"paired": true,
				"rpc": true,
				"rsv": 7
			},
			"config": {
				"id": 200,
				"addr": "00:00:00:00:00:00",
				"name": "BLU TRV",
				"key": null,
				"trv": "bthomedevice:200",
				"temp_sensors": [],
				"dw_sensors": [],
				"meta": {}
			}
		},
		{
			"key": "bthome",
			"status": {},
			"config": {}
		},
		{
			"key": "bthomedevice:200",
			"status": {
				"id": 200,
				"rssi": -59,
				"battery": 100,
				"packet_id": 141,
				"last_updated_ts": 1729073263,
				"paired": true,
				"rpc": true,
				"rsv": 7
			},
			"config": {
				"id": 200,
				"addr": "00:00:00:00:00:00",
				"name": "BLU TRV",
				"key": null,
				"meta": null
			},
			"attrs": {
				"flags": 17,
				"model_id": 8
			}
		},
		{
			"key": "bthomesensor:200",
			"status": {
				"id": 200,
				"value": 100,
				"last_updated_ts": 1729073263
			},
			"config": {
				"id": 200,
				"addr": "00:00:00:00:00:00",
				"name": null,
				"obj_id": 1,
				"idx": 0,
				"meta": null
			}
		},
		{
			"key": "bthomesensor:201",
			"status": {
				"id": 201,
				"last_updated_ts": 1070226272
			},
			"config": {
				"id": 201,
				"addr": "00:00:00:00:00:00",
				"name": null,
				"obj_id": 58,
				"idx": 0,
				"meta": null
			}
		},
		{
			"key": "bthomesensor:202",
			"status": {
				"id": 202,
				"value": 4.0,
				"last_updated_ts": 1729073263
			},
			"config": {
				"id": 202,
				"addr": "00:00:00:00:00:00",
				"name": null,
				"obj_id": 69,
				"idx": 0,
				"meta": null
			}
		},
		{
			"key": "bthomesensor:203",
			"status": {
				"id": 203,
				"value": 22.9,
				"last_updated_ts": 1729073263
			},
			"config": {
				"id": 203,
				"addr": "00:00:00:00:00:00",
				"name": null,
				"obj_id": 69,
				"idx": 1,
				"meta": null
			}
		},
		{
			"key": "cloud",
			"status": {
				"connected": true
			},
			"config": {
				"enable": true,
				"server": "shelly-13-eu.shelly.cloud:6022/jrpc"
			}
		},
		{
			"key": "mqtt",
			"status": {
				"connected": false
			},
			"config": {
				"enable": false,
				"server": null,
				"client_id": "shellyblugwg3-000000000000",
				"user": null,
				"ssl_ca": null,
				"topic_prefix": "shellyblugwg3-000000000000",
				"rpc_ntf": true,
				"status_ntf": false,
				"use_client_cert": false,
				"enable_rpc": true,
				"enable_control": true
			}
		},
		{
			"key": "sys",
			"status": {
				"mac": "000000000000",
				"restart_required": false,
				"time": "12:07",
				"unixtime": 1729073274,
				"uptime": 151645,
				"ram_size": 254368,
				"ram_free": 77560,
				"ram_min_free": 52216,
				"fs_size": 1048576,
				"fs_free": 98304,
				"cfg_rev": 63,
				"kvs_rev": 0,
				"schedule_rev": 0,
				"webhook_rev": 0,
				"available_updates": {},
				"reset_reason": 3
			},
			"config": {
				"device": {
					"name": "BLU Gateway G3 BZ",
					"mac": "000000000000",
					"fw_id": "20241007-074728/1.4.99-blugwg3prod2-g689f175",
					"discoverable": true,
					"eco_mode": false
				},
				"location": {
					"tz": "Europe/Berlin",
					"lat": 0.000000,
					"lon": 0.000000
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
					"server": "time.cloudflare.com"
				},
				"cfg_rev": 63
			}
		}
	],
	"cfg_rev": 63,
	"offset": 0,
	"total": 14
}
```
