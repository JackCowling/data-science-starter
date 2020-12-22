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
