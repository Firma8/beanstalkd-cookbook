beanstalkd Cookbook
===================
Installs and configures beanstalkd

Only tested on ubuntu, but should also work on debian.

Attributes
----------
#### beanstalkd::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['beanstalkd']['listen_addr']</tt></td>
    <td>String</td>
    <td>address to bind to</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['beanstalkd']['listen_port']</tt></td>
    <td>String</td>
    <td>port to bind to</td>
    <td><tt>11300</tt></td>
  </tr>
  <tr>
    <td><tt>['beanstalkd']['persistent_storage']</tt></td>
    <td>Boolean</td>
    <td>enables persistent storage in /var/lib/beanstalkd</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['beanstalkd']['extra_opts']</tt></td>
    <td>String</td>
    <td>extra daemon options</td>
    <td><tt></tt></td>
  </tr>
  <tr>
    <td><tt>['beanstalkd']['enable_startup']</tt></td>
    <td>Boolean</td>
    <td>enable service on startup</td>
    <td><tt>true</tt></td>
  </tr>
</table>

Usage
-----

Just include `beanstalkd` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[beanstalkd]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Submit a Pull Request using Github

License and Authors
-------------------
Authors: jblancett (Josh@firma8.com)
