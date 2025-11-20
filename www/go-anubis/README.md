## go-anubis
Bastille Template for Anubis, which weighs the soul of incoming HTTP requests 
to stop AI crawlers

## Usage
```shell
bastille template TARGET www/go-anubis --arg ED25519_PRIVATE_KEY_HEX=`openssl rand -hex 32` --arg WEB_SERVER_IP=10.20.30.40 --arg DOMAIN_NAME=example.com
```
