.PHONY: build
build:
	rm -rf build/
	mkdir build
	(cd build/ && cmake ../)
	(cd build/ && make)

.PHONY: run
run:
	(cd build/ && ./template)