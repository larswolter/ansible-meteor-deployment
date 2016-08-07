# Ansible Playbooks to deploy a server and a meteor app on it

## Requirements
- Ansible 2.x
- Meteor >= 1.4
- Ubuntu 16.04 on the target server

## What it does
Installs meteor requisites
- Nodejs 4.4.7
- Mongodb 3.2
- Nginx
- Icinga for monitoring

And the second playbook deploys a locally build meteor app to the server.
It allows to deploy multiple apps to one server, distinguished by their
site-name and the local port on the remote machine.


## Using it
Suppose you have a mewteor app to deploy, you need to install Ansible
on your local development machine and configure the connection to the deployment
machine using certificates to easily use ansible.
Run the playbook *deploy-server.yml* it only asks for the password for the icinga monitoring
create a server tarball of your meteor app using `meteor build` copy the resulting tar.gz to
the directory containing the playbooks naming it *meteorApp.tar.gz* 
Now run the *deploy-meteor.yml* playbook, it will ask for the sitename and for the local port on the remote machine
