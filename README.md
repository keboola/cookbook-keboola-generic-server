keboola-generic-server Cookbook
===============================

Generic server cookbook and CloudFormation template.


Cloudformation Troubleshooting
---------------
Each step of instance provisioning provides logs, these can be helplful when something goes wrong during instance provisioning.

* `/var/log/cloud-init.log` - Cloud init script
* `/var/log/cfn-init.log` - Cloudformation init script
* `/var/init/bootstrap.log` - Downloading chef and required recipes using Berkshelf
* `/var/init/chef_solo.log` - Chef provisioning

If you want to run chef provisioning again run following command as root on provisioned instance:
`chef-solo -j /var/init/node.json --config /var/init/solo.rb --node-name STACK_NAME`