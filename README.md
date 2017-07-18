# Systemd monitoring with prometheus

This repository contains source code of the example associate to this blog post.
It's contains several example :
- failing-unit-echo : simple systemd `OnFailure` demonstration

## Requirements
- Vagrant 1.9
- Docker > 17

## 1 - Failing-unit-echo
This is a simple demo of chaining systemd unit using `OnFailure` options.
In this section you will :
- Setup a vm ubuntu 16.04 provisionning with 2 systemd units
- Running a failing unit
- Observe the triggered unit log

Under ubuntu `service` configuration file are stored in `/etc/systemd/system` path

0 -Navigate to the repository
```shell

1- Setup vagrant VM
```shell
vagrant up
```
2- SSH to VM
```shell
vagrant ssh
```
3- Run failing unit
```shell
sudo systemctl run failing-unit
```
4 - observe triggered unit log
```shell
sudo systemctl status echo@failing-unit
```

You can now destroy vm with : `vagrant destroy` command
