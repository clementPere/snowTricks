# SnowTricks
Creation of a community snow tricks blog in symfony
<p align="center"><a href="https://symfony.com" target="_blank">
    <img src="https://symfony.com/logos/symfony_black_02.svg">
</a></p>

---

# Requirements
- PHP v8.1
- Composer v2.0
- Symfony v6.1
- Apache v2.4
- MySQL v5.7



# Installation
* Clone repository using `git clone`
* Install dependencies using `composer install`
* Add .env.local and init Database and Mailer DSN Exemple:
* Database: `DATABASE_URL="mysql://root:root@127.0.0.1:3306/snow_tricks?serverVersion=5.7&charset=utf8mb4"`
* Maildev: `MAILER_DSN=smtp://127.0.0.1:25`



# Fixtures
* Add fake data using `composer fixtures`
* This script runs the following commands:
> Drop database: `php bin/console doctrine:database:drop --if-exists -f`
> 
> Recreate database: `php bin/console doctrine:database:create`
> 
> Launch migration: `php bin/console d:m:m -n`
> 
> Launch fixtures: `php bin/console doctrine:fixtures:load -n`
                
