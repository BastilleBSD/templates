# salt-master
Bastille template to bootstrap Salt Master

## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/salt-master/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/salt-master/commits/master)

## Bootstrap
```shell
bastille bootstrap https://gitlab.com/bastillebsd-templates/salt-master
```

## Usage
```shell
bastille template TARGET bastillebsd-templates/salt-master
```

## Optional
The following are optional customizations to this template and basic
instructions on how to do so.

### Custom Config
Use a custom `etc/salt/master` config file to define master and other settings:

1. fork bastillebsd-templates/salt-master
2. add an `OVERLAY` file to the template, contents: `usr`
3. add a `usr/local/etc/salt/master` file in the template
4. commit; bootstrap your fork; apply template
