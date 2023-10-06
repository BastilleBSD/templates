## gitea
Bastille template to bootstrap gitea

## Usage
```shell
bastille template TARGET www/gitea --arg SECRET_KEY=`openssl rand -base64 16` --arg JWT_SECRET=`openssl rand -base64 32` --arg INTERNAL_TOKEN=`openssl rand -base64 64`
```
