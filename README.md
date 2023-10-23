# Bastille Combined Templates

## Status - Beta
This repository is a collection of Bastille templates all aggregated into
one place. This means you can add ALL the templates with one command. What's
more, the structure mimicks the FreeBSD ports tree. This means that you should
be able to find a template in a standard location to match any package origin.

Code is being tested to support this new combined method alongside the existing
format. This means you can still use your existing custom templates while also
taking advantage of the new combined collection.

This status will be removed once this new support has been added and merged.

To use templates you must have git installed on your system.
```shell
pkg install git
```

## Bootstrap
```shell
bastille bootstrap https://github.com/bastillebsd/templates
```

## Usage
```shell
bastille template TARGET [pkg/origin]
```

### Examples
```
bastille template TARGET www/nginx
bastille template TARGET shells/zsh
bastille template TARGET lang/python311
bastille template TARGET databases/mariadb1011-server
...etc...

```
