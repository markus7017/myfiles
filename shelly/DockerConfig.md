Symptom: Binding not receiving CoIoT messages

Possible reason: Docker with network in bridge mode (no mDns nor Multicast in general…)

To solve the problem you must create a macvlan network in docker:

Lets say you have a docker host with IP address 192.168.20.2/24 and you want to create an openhab container with ip 192.168.20.30/24 (same network, different ip)

docker network create 
-d macvlan 
–subnet=192.168.20.0/24 
–gateway=192.168.20.1 
-o parent=ovs_eth0 vlan120
the parent (ovs_eth0) is the physical interface that connect the host to the network, in my Synology is ovs_eth0 but usually is eth0. You can check with ifconfig.
VLAN120 is the name of the new network, you can of course use whatever you want.

then you can create the openhab container:

sudo docker run 
–name openhab-vlan120
–net=vlan120 
–dns=8.8.8.8 
–ip=192.168.20.30 
-v /volume1/homes/openhab2.5/conf:/openhab/conf 
-v /volume1/homes/openhab2.5/userdata:/openhab/userdata 
-v /volume1/homes/openhab2.5/addons:/openhab/addons 
-d 
-e USER_ID=1028 
-e GROUP_ID=100 
–restart=always 
openhab/openhab:2.5.11

If your host is also the DNS, you must define a --dns option, because the container in mtacvlan mode is UNABLE to comunicate with the docker host.
the new machine is at ip 192.168.20.30 and the shelly binding and all the other bindings with multicast are working fine.

