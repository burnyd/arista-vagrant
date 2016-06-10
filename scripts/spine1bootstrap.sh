#!/bin/sh

sleep 5

FastCli -p 15 -c "configure
hostname spine1
!
username api secret password
!
interface Ethernet1
  no switchport
  ip address 10.0.0.101/24
!
interface Ethernet2
description connection-to-leaf1a
no switchport
ip address 10.0.11.3/24
!
interface Ethernet3
description connection-to-leaf1b
no switchport
ip address 10.0.21.3/24
!
interface Ethernet4
description connection-to-leaf2a
no switchport
ip address 10.0.211.3/24
!
interface Ethernet5
description connection-to-leaf2b
no switchport
ip address 10.0.221.3/24
!
int lo0 
ip address 3.3.3.3/32
!
ip routing
!
exit"


