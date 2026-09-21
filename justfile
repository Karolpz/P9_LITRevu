set shell := ["powershell.exe", "-c"]

up:
    docker compose up -d

down:
    docker compose down

build:
    docker compose build

restart:
    docker compose restart web

logs:
    docker compose logs -f web

manage *ARGS:
    docker compose exec web uv run manage.py {{ARGS}}

migrate:
    just manage migrate

makemigrations:
    just manage makemigrations

superuser:
    just manage createsuperuser

shell:
    docker compose exec web uv run manage.py shell

bash:
    docker compose exec web bash

add *ARGS:
    docker compose exec web uv add {{ARGS}}

