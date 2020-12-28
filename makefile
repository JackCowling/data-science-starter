.DEFAULT: build

check:
		poetry check

install: check
		poetry install

lock:
		poetry lock 

clean: 
		rm -r -f ./dist/

build: clean
		poetry build

lint-in-place:
		poetry run yapf -r -i --style google -vv -e .venv .

type-check:
		poetry run mypy src --disallow-untyped-calls --disallow-untyped-defs --disallow-incomplete-defs
