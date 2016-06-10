# eos-vagrant

This is a project that will test the continuous integration for arista switches and other various linux/docker/nginx interestes.

Using the following topology
![alt tag](https://github.com/burnyd/eos-vagrant/blob/master/arista-vagrant.jpg)

The vagrant file should contain all the information on the build of the vagrant boxes.

The following boxes will be used.
1.) vEOS-4.15.5M 
2.) ubuntu/trusty64

I put together a todo segment with all of my tasks I need to accomplish.

Each leaf / spine will be setup in the typical L3 clos fabric.
Each device will receive a IP from the management network.
Three VM's will only reside in the management network one fir Ansible,One for DNS/LDAP/ZTP server and another for management.
