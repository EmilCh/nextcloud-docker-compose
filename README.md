# nextcloud-docker-compose

This is a repository containing custom Docker & docker compose files to run Nextcloud. 

To build replace registry.cheriches.eu with your own private registry and run:
```
docker compose build
docker compose push
```
To run put the docker-compose.yml file from the run folder intro your web server in a separate folder. 
Edit the file to change the postgress password and then run:
```
docker compose pull
docker compose up -d
wget https://download.nextcloud.com/server/releases/latest.zip
unzip latest.zip
mv nextcloud/* html/ && mv nextcloud/.* html/
chown -R nobody:nobody  html
rm -R nextcloud nextcloud.zip
```
In order to create the database run:
```
docker compose exec pgsql bash
su - postgres
psql
create user nextcloud with encrypted password 'YOUR_PASSWORD' ;
create database nextcloud with owner nextcloud;
```
Configure your main reverse proxy and run the install.
Point your browser to the nextcloud address and run the install
