Local test environment with 
Matomo last version
Wordpress Woocommerce

docker-compose up -d


Access to WP: http://localhost:8000 
Acess to Matomo: http://localhost:8080 


TO DO:

Crear un install file que usa un wget y baja los ultimos Matomo y WP
(O por lo menos matomo)

dejar en el docker-compose.yml

que matomo se baje y se sincronice con el contenedor montado

  matomo:
.
.
    volumes:
      - ./src/html:/var/www/html