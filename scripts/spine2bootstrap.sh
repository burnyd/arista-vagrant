#!/bin/sh

sleep 5

FastCli -p 15 -c "configure
hostname spine2
!
username api secret password
!
interface Ethernet1
  no switchport
  ip address 10.0.0.102/24
!
interface Ethernet2
description connection-to-leaf1a
no switchport
ip address 10.0.12.3/24
!
interface Ethernet3
description connection-to-leaf1b
no switchport
ip address 10.0.22.3/24
!
interface Ethernet4
description connection-to-leaf2a
no switchport
ip address 10.0.212.3/24
!
interface Ethernet5
description connection-to-leaf2b
no switchport
ip address 10.0.222.3/24
!
int lo0 
ip address 4.4.4.4/32
!
ip routing
!
exit"
