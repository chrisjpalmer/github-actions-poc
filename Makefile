
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
	# https://docs.github.com/en/webhooks/webhook-events-and-payloads#pull_request
	# --var GITHUB_BASE_REF=main 
	act pull_request -e check-pull-request.json