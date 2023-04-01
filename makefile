install-package:
	python -m pip install -e .

local-install:
	python -m pip install -e .[dev,test]

run-all-checks: run-unit-tests type-check black-check

run-unit-tests:
	pytest --cov=src/ testing/

type-check:
	mypy src --disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs

black-check:
	black --check src

black-apply:
	black src
