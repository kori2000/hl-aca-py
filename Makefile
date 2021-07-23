build:
	docker-compose build
up:
	docker-compose up -d
	sleep 7
	docker logs cloudagent
down:
	docker-compose down