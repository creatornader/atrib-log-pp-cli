.PHONY: build test lint install clean

build:
	go build -o bin/atrib-log-pp-cli ./cmd/atrib-log-pp-cli

test:
	go test ./...

lint:
	golangci-lint run

install:
	go install ./cmd/atrib-log-pp-cli

clean:
	rm -rf bin/

build-mcp:
	go build -o bin/atrib-log-pp-mcp ./cmd/atrib-log-pp-mcp

install-mcp:
	go install ./cmd/atrib-log-pp-mcp

build-all: build build-mcp
