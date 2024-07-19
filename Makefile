
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

check-pull-request:
	act --var github.base_ref=main pull_request