dbConnection= postgres://admin_role:123456@localhost:5432/x_bank?sslmode=disable

up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down
create_db:
	docker exec -it postgres_server psql -U root -c "create database blue_bank"

drop_db:
	docker exec -it postgres_server psql -U root -c "drop database blue_bank with (force)"

migrate_up:
	migrate -path db/${db_name}/migration -database "$(dbConnection)" -verbose up 1

migrate_down:
	migrate -path db/${db_service}/migration -database "$(dbConnection)" -verbose down 1

migrate_new:
	migrate create -ext sql -dir db/${db_service}/migration -seq ${name}