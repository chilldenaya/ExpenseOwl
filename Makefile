DOCKER_IMAGE := chilldenaya/expenseowl

docker-build:
	docker build -t $(DOCKER_IMAGE) .

docker-push: docker-build
	docker push $(DOCKER_IMAGE)

docker-run:
	docker run --rm -d \
	--name expenseowl \
	-p 8080:8080 \
	-v expenseowl:/app/data \
	chilldenaya/expenseowl:main

run:
	go run ./cmd/expenseowl

.PHONY: docker-build docker-push
