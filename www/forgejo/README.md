# www/forgejo
Compact self-hosted Git service
https://forgejo.org/

## Bastille Usage
```shell
bastille template TARGET www/forgejo --arg SECRET_KEY=`openssl rand -base64 16` --arg JWT_SECRET=`openssl rand -base64 32` --arg INTERNAL_TOKEN=`openssl rand -base64 64`
```

## Rocinante Usage
```shell
bastille template www/forgejo --arg SECRET_KEY=`openssl rand -base64 16` --arg JWT_SECRET=`openssl rand -base64 32` --arg INTERNAL_TOKEN=`openssl rand -base64 64`
```
