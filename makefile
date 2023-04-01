.DEFAULT: update_requirements

check:
	poetry check

lock: check
	poetry lock

update-dev-requirements: lock
	poetry export -o requirements_dev.txt --with dev

update-prod-requirements: check lock
	poetry export -o requirements.txt

update-requirements: update-dev-requirements update-prod-requirements

run-unit-tests:
	pytest --cov=src/ testing/

lint-check:
	pylint --output-format=json:pylint_output.json,text src

type-check:
	mypy src --disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs

black-check:
	black --check src

black-apply:
	black src