#!/bin/bash

wget https://builds.matomo.org/matomo-latest.zip && \
bsdtar -xvf matomo-latest.zip -s'|[^/]*/||' -C src/html && \
rm matomo-latest.zip && \
docker-compose up -d && \
# DELETE IF ROW 10 WORKS: chown -R www-data:www-data /var/www/html

cd local-ssl &
export CAROOT=$(pwd) &
mkcert -install

echo -e "\033[0;33mSetting permissions\033[0m"
docker exec --user=root -it  matomo chown www-data:www-data -R /var/www/html