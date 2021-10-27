## Bootstrap
https://getbootstrap.com/docs/5.1/

## Traduction des langues
 - @ngx-translate/core
 - @ngx-translate/http-loader

##  Notification 
npm install ngx-toastr --save
npm install @angular/animations --save


## Traductions mannuelles
 - Google traduction
  
## Liste des tables
    - langues avec niveau

## Backend with laravel (Laravel v8.67.0 (PHP v7.4.12), Mysql)
 - Base de données Nysql : datnek_database.sql à importer si nécessaire.Le fichier se trouve sur la racine de ce projet.

Démarer le serveur backend
 1. git clone https://github.com/EL195/datnekBackend.git
 2. cd datnekBackend
 3. Modifier votre .env pour la bd. Si possible importer le fichier sql se trouvant sur la racine du projet frontend.
 4. Composer install
 5. php artisan serve
 6. lien ddu serveur : http://127.0.0.1:8000

Démarer le serveur frontend
1. git clone hhttps://github.com/EL195/datnek_angular.git
2. cd datnek_angular
3. npm install
4. ng serve
5. run http://localhost:4200/

