## Status
[![pipeline status](https://gitlab.com/bastillebsd-templates/gitea/badges/devel/pipeline.svg)](https://gitlab.com/bastillebsd-templates/gitea/commits/devel)

## gitea
Bastille template to bootstrap gitea

## Bootstrap

```shell
bastille bootstrap https://gitlab.com/bastillebsd-templates/gitea
```

## Usage
```shell
bastille template TARGET bastillebsd-templates/gitea --arg SECRET_KEY=`openssl rand -base64 16` --arg JWT_SECRET=`openssl rand -base64 32` --arg INTERNAL_TOKEN=`openssl rand -base64 64`
```
