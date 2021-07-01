all: build install

build:
	ansible-galaxy collection build --force

install:
	ansible-galaxy collection install $(shell ls -1 katsdp-general*.tar.gz | sort | tail -n 1) --force

clean:
	rm -f katsdp-general*.tar.gz
