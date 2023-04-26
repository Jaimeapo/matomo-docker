#!/bin/bash

echo -e "\033[0;33mSetting permissions\033[0m"
docker exec --user=root -it  app chown www-data:www-data -R /var/www/html