#!/bin/bash
set -euxo pipefail

poetry run cruft check
poetry run mypy --ignore-missing-imports fastapi_test/
poetry run isort --check --diff fastapi_test/ tests/
poetry run black --check fastapi_test/ tests/
poetry run flake8 fastapi_test/ tests/
poetry run safety check -i 39462 -i 40291
poetry run bandit -r fastapi_test/
