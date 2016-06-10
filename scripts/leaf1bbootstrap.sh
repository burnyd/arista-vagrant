#!/bin/sh

sleep 5

FastCli -p 15 -c "configure
hostname leaf1b
!
username api secret password
!
vlan 5
!
interface vlan 5
ip address 10.0.5.3/24
vrrp 5 ip 10.0.5.1
no shut
!
interface Ethernet1
  no switchport
  ip address 10.0.0.100/24
!
interface Ethernet2
description connection-to-spine1
no switchport
ip address 10.0.21.2/24
!
interface Ethernet3
description connection-to-spine2
no switchport
ip address 10.0.22.2/24
!
interface Ethernet4
description connection-to-leaf1a
switchport
switchport mode trunk
!
interface Ethernet5
description connection-to-host2
switchport mode access
switchport access vlan 5
!
int loopback0
ip address 2.2.2.2/32
!
ip routing
!
exit"
