.PHONY: build
build:
	rm -rf build/
	mkdir build
	(cd build/ && cmake -DGLFW_BUILD_DOCS=OFF -DGLFW_INSTALL=OFF -S ../)
	(cd build/ && make)

.PHONY: run
run:
	(cd build/ && ./template)