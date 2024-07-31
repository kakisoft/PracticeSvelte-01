up:
	docker compose up -d

down:
	docker compose down

build:
	docker compose build

exec:
	docker compose exec drive-recorder-client bash

build/dev:
	docker compose exec drive-recorder-client bash -c "npm run build:development"

build/prod:
	docker compose exec drive-recorder-client bash -c "npm run build:production"

run/dev:
	docker compose exec drive-recorder-client bash -c "npm run dev:development -- --host --port 5173"

run/prod:
	docker compose exec drive-recorder-client bash -c "npm run dev:production -- --host --port 5173"

run/preview:
	docker compose exec drive-recorder-client bash -c "npm run preview -- --host --port 5173"

node/build:
	docker compose exec drive-recorder-client bash -c "npm run start"
