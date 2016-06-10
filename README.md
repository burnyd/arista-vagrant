<<<<<<< HEAD
# eos-vagrant

This is a project that will test the continuous integration for arista switches and other various linux/docker/nginx interestes.

Using the following topology
![alt tag](https://github.com/burnyd/arista-vagrant/blob/master/arista-vagrant.jpg)

The vagrant file should contain all the information on the build of the vagrant boxes.

The following boxes will be used.
1.) vEOS-4.15.5M 
2.) ubuntu/trusty64

After pulling this repo please do the following in order to make this work.
1.) Arista does not have a official box on vagrant or atlas.  So one will have to be created.  Please download a arista vEOS .vmdk of your liking.
2.) run the following command in the directory where the github repo is vagrant box add --name vEOS-lab- vEOS-lab- #where lab- is the verision for exmaple mine is vEOS-lab-4.153.) vagrant init vEOS-lab- 
4.) If you used anything other than vEOS-lab-4.15 please edit the Vagrantfile config.vm.box = "vEOS-lab-4.15".  This has only been tested with 4.15. 
3.) vagrant init vEOS-lab- 
4.) If you used anything other than vEOS-lab-4.15 please edit the Vagrantfile config.vm.box = "vEOS-lab-4.15".  This has only been tested with 4.1.5.
5.) vagrant up will bring up the environment.

I put together a todo segment with all of my tasks I need to accomplish.

Each leaf / spine will be setup in the typical L3 clos fabric.
Each device will receive a IP from the management network.
=======
# arista-vagrant
>>>>>>> 9e25cd3696d74630c88af50421a038c2cc2bc731
