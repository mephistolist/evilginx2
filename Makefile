TARGET=evilginx
PACKAGES=core database log parser

.PHONY: all build clean
all: build

build:
	@go build -o ./build/$(TARGET) -mod=vendor main.go

install:
	@cp build/evilginx /usr/local/bin/
	@mkdir -p /usr/local/etc/evilginx
	@cp -R phishlets/ /usr/local/etc/evilginx/

clean:
	@go clean
	@rm -f ./build/$(TARGET)
