## nginx-poudriere-pkg-conf
Bastille Template: nginx-poudriere-pkg-conf

## Usage
```shell
bastille template TARGET www/nginx-poudriere-pkg-conf
```

## Description
This template adds a `poudriere-local.conf` to the container's configured
repository. This is meant to be used with
https://github.com/bastillebsd/templates/nginx-poudriere

Note: update the `10.17.89.80` example IP address with the address of your pkg
container.
