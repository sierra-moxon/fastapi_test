#!/bin/bash
set -euxo pipefail

poetry run isort fastapi_test/ tests/
poetry run black fastapi_test/ tests/
