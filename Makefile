
GO        ?= GO111MODULE=on go
VERSION   ?= latest

.PHONY: bin

bin:
	@$(MAKE) tidy
	$(GO) build -o bin/app cmd/main.go

run:
	@$(MAKE) tidy
	$(GO) run cmd/main.go

tidy:
	$(GO) mod tidy

test:
	$(GO) test -race -count=1 -cover -v ./...