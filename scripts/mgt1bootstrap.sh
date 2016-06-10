#!/usr/bin/env bash

sleep 5

echo "copying dns resolv.conf because vagrant sucks at dns proxy"
sudo cp /vagrant/scripts/resolv.conf /etc/hosts
sudo cp /vagrant/scripts/resolv.conf /etc/resolv.conf

echo "adding respositories"
echo "ansible for apt-get"
sudo apt-add-repository ppa:ansible/ansible -y

echo "updating apt-get"
sudo apt-get update -y 
echo "installing everything necessary for DNS and Bind"
sudo apt-get install git -y && sudo apt-get install bind9 bind9utils bind9-doc -y && sudo apt-get install dnsutils -y && sudo apt-get install ansible -y

sudo apt-get update -y

sudo cp /vagrant/scripts/named.conf.options /etc/bind/named.conf.options

sudo cp /vagrant/scripts/named.conf.local /etc/bind/named.conf.local

sudo cp /vagrant/scripts/db.test.com /etc/bind/db.test.com


echo "restarting bind"
sudo service bind9 restart


