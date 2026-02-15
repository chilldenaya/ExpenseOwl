DOCKER_IMAGE := chilldenaya/expenseowl

docker-build:
	docker build -t $(DOCKER_IMAGE) .

docker-push: docker-build
	docker push $(DOCKER_IMAGE)

run:
	go run ./cmd/expenseowl

.PHONY: docker-build docker-push
