#!/bin/sh

sleep 5

FastCli -p 15 -c "configure
hostname leaf2a
!
username api secret password
!
vlan 6
!
interface vlan 6
ip address 10.0.6.2/24
vrrp 6 ip 10.0.6.1
no shut
!
interface Ethernet1
  no switchport
  ip address 10.0.0.103/24
!
interface Ethernet2
description connection-to-spine1
no switchport
ip address 10.0.211.2/24
!
interface Ethernet3
description connection-to-spine2
no switchport
ip address 10.0.212.2/24
!
interface Ethernet4
description connection-to-leaf2b
switchport
switchport mode trunk
!
interface Ethernet5
description connection-to-host2
switchport mode access
switchport access vlan 6
!
int loopback0
ip address 5.5.5.5/32
!
exit"
