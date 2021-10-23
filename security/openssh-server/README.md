## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/openssh-server/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/openssh-server/commits/master)

# openssh-server
Bastille template to bootstrap openssh-server

## Bootstrap

```shell
bastille bootstrap https://gitlab.com/bastillebsd-templates/openssh-server
```

## Usage

```shell
bastille template TARGET bastillebsd-templates/openssh-server
```

## Optional:
The following are optional customizations to this template and basic
instructions on how to do so.

### custom config
Use a custom `/etc/ssh/sshd_config` in the template:

1. fork bastillebsd-templates/openssh-server
2. add an `CP etc` directive to the Bastillefile
3. add an `etc/ssh/sshd_config` in the template
4. commit; bootstrap fork; apply template

### Use custom `sshd_flags`:
Use custom `sshd_flags` in jailed ssh service:

1. fork bastillebsd-templates/openssh-server
2. update the Bastillefile and add `SYSRC sshd_flags=""`
3. commit; bootstrap fork; apply template
