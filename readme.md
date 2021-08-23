#Kumu Backend Exam

##Library and Framework Used
1. Laravel 
2. Predis (For PHP Redis)
3. PHP 7.4+
4. MySql
5. Laravel Passport

##Installation & Running
1. clone or download the repository
2. run `composer install` to install the vendor files
3. Generate public key by `php artisan key:generate'
4. copy the content of .env.example to .env file
5. create a database named `username_resolver`
6. run the command `php artisan migrate` to migrate all the database content
7. run `php artisan passport:install` to install Passport libraries.
8. run the app `php artisan serve`

##Accessing the API Endpoints
1. Import the postman collection provided in the root directory of the project
2. Register your desired user on the Register Collection
3. Login your user and copy the bearer token
4. Paste the bearer token of your user to authorization tab in Postman before executing any URL.

Thank you!
