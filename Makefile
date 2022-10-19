env ?= .env.local
include $(env)

up:
	docker-compose --env-file .env.local up

upd:
	docker-compose --env-file .env.local up -d
	echo "OK"

updb:
	docker-compose --env-file .env.local up -d --build
	echo "OK"

stop:
	docker-compose --env-file .env.local stop
	echo "OK"

down:
	docker-compose --env-file .env.local down
	echo "OK"

ps:
	docker-compose --env-file .env.local ps

in:
	docker exec -it $(APP_NAME)_app sh
