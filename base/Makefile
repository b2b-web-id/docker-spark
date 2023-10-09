NAME = b2bwebid/spark-base
VERSION = 3.4.1

.PHONY: all build tag_latest release

all: build

build:
	docker pull b2bwebid/debian:bookworm
	docker build -t $(NAME):$(VERSION) --rm .

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest
	docker push ${NAME}:latest

release:
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "Build image first."; false; fi
	docker push $(NAME):$(VERSION)

