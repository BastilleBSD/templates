## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/nginx-poudriere-pkg-conf/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/nginx-poudriere-pkg-conf/commits/master)

## nginx-poudriere-pkg-conf
Bastille Template: nginx-poudriere-pkg-conf

Fetch and apply this template with:

```shell
bastille bootstrap https://gitlab.com/BastilleBSD-Templates/nginx-poudriere-pkg-conf
bastille template TARGET BastilleBSD-Templates/nginx-poudriere-pkg-conf
```

## Description
This template adds a `poudriere-local.conf` to the container's configured
repository. This is meant to be used with
https://gitlab.com/bastillebsd-templates/nginx-poudriere

Note: update the `10.17.89.80` example IP address with the address of your pkg
container.
