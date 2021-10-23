## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/nginx-poudriere/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/nginx-poudriere/commits/master)

## nginx-poudriere
Bastille template to bootstrap nginx for poudriere

## Bootstrap

```shell
bastille bootstrap https://gitlab.com/bastillebsd-templates/nginx-poudriere
```

## Usage
```shell
bastille template TARGET bastillebsd-templates/nginx-poudriere
```

## Notes
The `nginx.conf` OVERLAY assumes a poudriere naming scheme of
"majorversionarch" (ie "12amd64", "13aarch64", etc) and a "default" ports
tree.

Example: FreeBSD:12:amd64 will be served from 12amd64-default poudriere
repository, FreeBSD:13:aarch64 from 13aarch64-default, etc.

See: https://gitlab.com/bastillebsd-templates/nginx-poudriere-pkg-conf for client
repo config.
