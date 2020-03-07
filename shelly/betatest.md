Hi,

lets start testing
a) latest binding code
b) Device firmware 1.6-rc6 (for those devices already received that version, others will be 1.5.7)

## Update Binding
- Make sure that binding is in TRACE mode (OH console "log:set TRACE org.openhab.binding.shelly")
- Stop OH, wait until everything is down
- Download the latest Binding SNAPSHOT/DEV Build:
https://github.com/markus7017/myfiles/blob/master/shelly/org.openhab.binding.shelly-2.5.2-SNAPSHOT.jar?raw=true
and copy to OH's addons folder
- Start OH to verify everything comes up fine
- Stop OH

## Download 1.6-rc6/1.5.7 firmware files
- create a new directory fwbeta under config/html
- dowlnoad the firmware files into this folder

```csv
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHPLG-S_build.zip     # Plug-S
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHSW-1_build.zip      # Shelly 1
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHPLG2-1_build.zip    # Shelly 2
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHSW-25_build.zip     # Shelly 2.5
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHSW-PM_build.zip     # Shelly PM
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHSW-44_build.zip     # Shelly 4 Pro
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHEM_build.zip        # Shelly EM
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHEM-3_build.zip      # Shelly EM3
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHDM-1_build.zip      # Shelly Dimmer
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHBLB-1_build.zip     # Shelly Bulb
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHBDUO-1_build.zip    # Shelly Duoexception
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHRGBW2_build.zip     # Shelly RGBW2
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHHT-1_build.zip      # Shelly H&T
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHWT-1_build.zip      # Shelly Flood
wget https://github.com/markus7017/myfiles/blob/master/shelly/fwbeta/SHDW-1_build.zip      # Shelly Door Window
```

## Upgrade the deivces - 1 by 1 with the correct firmware file!

**This is a beta release**, it might cause instabilities even it is already Release Candidate #6**

Run curl with
```
curl -s http://<device ip>/ota?url=http://<device ip>:8080/static/fwbeta/<device type>_build.zip
```

If you have password protected devices add -u &lt;user&gt;:&lt;passowrd&gt; to the command line

Examples: Make sure you use the correct device IP and device type
```
# curl -s -u admin:admin http://192.168.111.1/ota?url=http://192.168.111.7:8080/static/fwbeta/SHBDUO-1_build.zip   # Shelly Duo
# curl -s -u admin:admin http://192.168.111.2/ota?url=http://192.168.111.7:8080/static/fwbeta/SHSW1_build.zip      # Shelly 1
# curl -s -u admin:admin http://192.168.111.3/ota?url=http://192.168.111.7:8080/static/fwbeta/SHSW-25_build.zip    # Shelly 2.5
# curl -s -u admin:admin http://192.168.111.4/ota?url=http://192.168.111.7:8080/static/fwbeta/SHDM-1_build.zip     # Shelly Dimmer
# curl -s -u admin:admin http://192.168.111.5/ota?url=http://192.168.111.7:8080/static/fwbeta/SHSW-1_build.zip     # Shelly 1
# curl -s -u admin:admin http://192.168.111.6/ota?url=http://192.168.111.7:8080/static/fwbeta/SHSW-44_build.zip    # Shelly 4 Pro
# curl -s -u admin:admin http://192.168.111.7/ota?url=http://192.168.111.7:8080/static/fwbeta/SHPLG2-1_build.zip   # Shelly 2.1
# curl -s -u admin:admin http://192.168.111.8/ota?url=http://192.168.111.7:8080/static/fwbeta/SHSW-PM_build.zip    # Shelly 1PM
# curl -s -u admin:admin http://192.168.111.9/ota?url=http://192.168.111.7:8080/static/fwbeta/SHHT-1_build.zip     # Shelly HT
# curl -s -u admin:admin http://192.168.111.10/ota?url=http://192.168.111.7:8080/static/fwbeta/SHWT-_build.zip     # Shelly Flood
```

Finally start OH and check that all things come online.
