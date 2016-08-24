# Ansible Playbooks to deploy server for meteor and php apps

## Requirements
- Ansible 2.x
- Ubuntu 16.04 on the target server
- Meteor >= 1.4 (for the meteor app deployment)

## What it does
Installs meteor requisites for meteor servers (group meteorServer)
- Nodejs 4.4.7
- Mongodb 3.2
- Nginx
- Icinga for monitoring

Installs php requisites for php servers (group phpServer)
- Nginx
- Maria DB
- PHP 7.0
- Icinga for monitoring

And the second playbook deploys a locally build meteor app to the server.


## Using it
Suppose you have a meteor app to deploy, you need to install Ansible
on your local development machine and configure the connection to the deployment
machine using certificates to easily use ansible.
Configure the hosts for ansible

```
[meteorServer]
example1.com site_name=example1.com port=3000 monitoring_password=12345

[phpServer]
example2.com site_name=example2.com monitoring_password=12354        
```
There is also a variable called *nginx_site_content* to add extra rules (rewrite rules for example) to the nginx site configuration

Now run the playbook *deploy-server.yml* to install the servers 

create a server tarball of your meteor app using `meteor build` copy the resulting tar.gz to
the directory containing the playbooks naming it *meteorApp.tar.gz* 
Now run the *deploy-meteor.yml* playbook, it will ask for the sitename and for the local port on the remote machine
