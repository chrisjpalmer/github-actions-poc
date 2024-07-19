
test:
	go test ./...

build:
	go build -o main ./cmd

run:
	go run ./cmd


docker-test:
	docker build --target test .

docker-build:
	docker build -t github-actions-poc .

docker-run:
	docker run --rm github-actions-poc

act-pull:
	act -v pull_request