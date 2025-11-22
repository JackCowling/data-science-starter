install-package:
	uv sync

local-install:
	uv sync --all-groups

run-all-checks: run-unit-tests type-check black-check

run-unit-tests:
	uv run pytest --cov=src/ testing/

type-check:
	uv run mypy src --disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs

black-check:
	uv run black --check src testing

black-apply:
	uv run black src testing
