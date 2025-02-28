dbConnection= postgres://admin_role:123456@localhost:5432/x_bank?sslmode=disable
IMAGE_NAME=db-server
NETWORK_NAME=x-bank-net

network:
	docker network create --driver bridge  $(NETWORK_NAME)
build:
	docker build --progress=plain -t $(IMAGE_NAME) .
run: build
	docker run --rm -p 5432:5432 -d --name $(IMAGE_NAME) --network  $(NETWORK_NAME) $(IMAGE_NAME)
create_db:
	docker exec -it postgres_server psql -U root -c "create database x_bank"

drop_db:
	docker exec -it postgres_server psql -U root -c "drop database x_bank with (force)"

migrate_up:
	migrate -path db/${db_name}/migration -database "$(dbConnection)" -verbose up 1

migrate_down:
	migrate -path db/${db_name}/migration -database "$(dbConnection)" -verbose down 1

migrate_new:
	migrate create -ext sql -dir db/${db_service}/migration -seq ${name}