up:
	docker compose down
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f

build:
	docker build ./snapserver -t clcain/snapserver

buildx:
	docker buildx build ./snapserver -t clcain/snapserver --platform linux/amd64,linux/arm64,linux/arm/v7

push-buildx:
	docker buildx build ./snapserver -t clcain/snapserver --platform linux/amd64,linux/arm64,linux/arm/v7 --push

clean:
	docker compose down -t 0
	docker compose rm -fv

.PHONY: *
