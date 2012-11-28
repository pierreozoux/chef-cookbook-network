chef-cookbook-network
=====================

A set of recipes to cook your network configuration before cooking your server.

You'll need to add the following to your JSON attributes file :

`````
{
  ...
  "set_ip": "172.16.XXX.X",
  "set_gateway" : "172.16.0.1",
  "set_netmask" : "255.255.0.0",
  "set_fqdn" : "your-server-name",
  "run_list": [ 
    "recipe[hostname]",
    "recipe[static-ip]"
    ...
  ]
  ...
}
`````
