# zabbix-agent
Bastille template to bootstrap zabbix-agent

## Usage

```shell
bastille template TARGET net-mgmt/zabbix-agent
```

## Post Install Steps

Once this is done running there are a couple of manual steps you have to do.  First edit the file

    /usr/local/etc/zabbix5/zabbix_agentd.conf

and edit the following lines with your server ip/hostname, and your client's hostname:

    Server=1.1.1.1
    ServerActive=1.1.1.1
    Hostname=hostname.domain.tld

then restart the zabbix agent:

```shell
bastille service TARGET zabbix-agentd restart
```
and at this point you can add this client to your zabbix server.
