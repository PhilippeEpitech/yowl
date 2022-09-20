COTE BACK :

faire le .env et y ajouter cette ligne : 
SANCTUM_STATEFUL_DOMAINS=localhost:8080

lancez cette commande : 
composer update && composer install
php artisan key:generate
php artisan serv

dans un autre terminal : 
npm install && npm run dev

COTE FRONT :
npm install && npm run serve


DOCKER : 

front : 
sudo docker build -t vuejs-cookbook/dockerize-vuejs-app .
sudo docker run -it -p 8080:8080 --rm --name dockerize-vuejs-app-1 vuejs-cookbook/dockerize-vuejs-app

back:
sudo ./vendor/bin/sail up
sudo ./vendor/bin/sail npm install && npm run serve


beatrice02@example.org // password Admin account
rhickle@example.org // normal user

sudo ./vendor/bin/sail mysql -u sail -p --host=0.0.0.0 --port=3306