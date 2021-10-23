# salt-minion
Bastille template to bootstrap Salt Minion

## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/salt-minion/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/salt-minion/commits/master)

## Bootstrap
```shell
ishmael ~ # bastille bootstrap https://gitlab.com/bastillebsd-templates/salt-minion
```

## Usage
```shell
ishmael ~ # bastille template TARGET bastillebsd-templates/salt-minion
```

## Optional
The following are optional customizations to this template and basic
instructions on how to do so.

### Custom Config
Use a custom `etc/salt/minion` config file to define master and other settings:

1. fork bastillebsd-templates/salt-minion
2. add an `OVERLAY` file to the template, contents: `usr`
3. add a `usr/local/etc/salt/minion` file in the template
4. commit; bootstrap your fork; apply template
