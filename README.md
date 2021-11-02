# wordpress-example

An example showing Wordpress running in a containerized environment with
DB and Adminer UI.

You will need to run the Wordpress setup process by connecting to the
Wordpress URL and follow the instructions there.  This creates the
database tables. Until this is completed the wordpress folder in the
database server will be empty.  You may find that the MySQL instance
takes a couple of minutes to fully initialize and so will not allow
connections until this is done.  SO be prepared to wait a minute or so
before hitting thje Wordpress site URL.

A Makefile is setup to run the various commend to run the installation.

Before you do the initial docker-compose you need to run:

 make create-vol

This will set up the external data volumes for the DB data and the
Wordpress site data.  Making them external in this way will allow you to
connect to the running instances and backup both the database and the
Wordpress site folder.  It also means that module updates applied to
Wordpress will persist between restarts of the containerized environment.

