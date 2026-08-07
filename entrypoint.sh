#!/bin/sh

set -e

echo "Running database migrations..."

poetry run alembic upgrade head

echo "Starting FastAPI..."

exec poetry run uvicorn app.main:app \
    --host 0.0.0.0 \
    --port 8000