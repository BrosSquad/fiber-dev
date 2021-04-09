TAG ?= dev

.PHONY: build
build:
	@docker build -t brossquad/fiber-dev:$(TAG) --compress .

.PHONY: build
remove:
	@docker image rm --force brossquad/fiber-dev:$(TAG)

.PHONY: clean
	@docker container prune
	@docker image prune
