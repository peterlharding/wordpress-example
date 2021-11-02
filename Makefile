

up:
	docker-compose up -d

down:
	docker-compose down

clean:
	docker image rm database 
	docker image rm wordpress 

create-net:
	docker network create wp-net

create-vol:
	docker volume create wp-db-data
	docker volume create wp-site-data

rm-vol:
	docker volume rm wp-db-data
	docker volume rm wp-site-data




