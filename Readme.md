# Ty Terroir 🐳

## Description

Starter kit to build a symfony app based on symfony skeleton 😀 

- `apache`, acting as the webserver.
- `php`, the PHP-FPM container with the 7.4 PHPversion.
- `db` which is the MySQL database container with a **MariaDB** image.
- *Optionnal* : `Directus` is used to manage the db

## Installation

1. Clone this rep 🖥️.

2. Run `docker-compose up -d`

3. Update composer bundle : Run `docker exec www_ty-terroir composer install`

4. Go to app folder : `cd app`

5. Run yarn : `yarn install`

6. Run Webpack Encore : `yarn encore dev --watch`

7. Go to http://localhost:8741/

8. It works on my machine 🔥

## Mailer configurations

1. In  app/.env file add username and password for mailgun

2. In app/Notification/ContactNotification.php change 'from' and 'to' fields

 
## Docker compose cheatsheet

**Note:** you need to cd first to where your docker-compose.yml file lives.

  * Start containers in the background: `docker-compose up -d`
  * Start containers on the foreground: `docker-compose up`. You will see a stream of logs for every container running.
  * Stop containers: `docker-compose stop`
  * Kill containers: `docker-compose kill`
  * View container logs: `docker-compose logs`
  * Execute command inside of container: `docker-compose exec SERVICE_NAME COMMAND` where `COMMAND` is whatever you want to run. Examples:
    * Run symfony console, ex:`docker exec www_docker_symfony php bin/console cache:clear` 
    * Install bundle : ex:`docker exec www_docker_symfony composer require "twig/twig:^3.0"`

## Installed bundle
- Twig
- Annotation
- Maker
- Asset
- Web-profiler (debug bar)
- Webpack-encore
- Symfony Form
- Symfony mailer
- Symfony mailer -> Mailgun
- Validator