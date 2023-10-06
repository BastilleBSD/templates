## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/minecraft-server/badges/master/pipeline.svg)](https://gitlab.com/bastillebsd-templates/minecraft-server/commits/master)

## minecraft-server
Bastille template for a minecraft server.

Note: by installing this template you agree to the terms of the [Minecraft EULA](https://aka.ms/MinecraftEULA).

This template includes the `eula=true` acceptance and `LICENSES_ACCEPTED+= minecraft` 
settings. If you cannot abide the terms of the Minecraft EULA *do not* apply this template.

### requirements
Due to license restrictions (see above Minecraft EULA), redistribution of
Minecraft server is prohibited. This means you must build the package manually
from the FreeBSD ports tree. 

This template will automate all the build steps but depends on `/usr/ports`
existing on the host system.

To install (or update) `/usr/ports` on the host system use `portsnap` as seen here:

```shell
ishmael ~ # portsnap fetch auto
```

Note: the ports tree is mounted read-only within the container.

## Apply template

```shell
ishmael ~ # bastille template TARGET bastillebsd-templates/minecraft-server
```

## Access server console

The minecraft server will run in `STANDALONE` mode meaning the service execution
will happen within a `tmux` session. To access this session use this command: 

```shell
ishmael ~ # bastille service TARGET minecraft console
```

Tip: `tmux` session management is handled using `ctrl-b` prefix. To exit the
session press `ctrl-b d`.
