# Matomo & WP dev env

Local test environment with 
Matomo last version
Wordpress Woocommerce (needs to be installed manually)

Backup your `src/html/config/config.ini.php` and delete from this folder

Install [mkcert](https://github.com/FiloSottile/mkcert#installation)

Install local ROOT CA

```
cd local-ssl
export CAROOT=$(pwd)
mkcert -install
```

run 
```install.sh```
> it will run 
`docker-compose up -d` as well


Access to WP: http://localhost:8000 \
Acess to Matomo: http://localhost:8080 


## TO DO:

* backup config.ini.php
* backup db
* Woocommerce instalation 