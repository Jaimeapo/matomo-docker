#!/bin/bash

wget https://builds.matomo.org/matomo-latest.zip && \
unzip matomo-latest.zip && \
rm matomo-latest.zip && \
# DELETE IF ROW 10 WORKS: chown -R www-data:www-data /var/www/html


echo -e "\033[0;33mSetting permissions\033[0m"
docker exec --user=root -it  app chown www-data:www-data -R /var/www/html