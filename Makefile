build:
	GOOS=linux GOARCH=amd64 go build -o shipcon-consignment-cli
	docker build -t shipcon-consignment-cli .

run:
	docker run --net="host" \
               -e MICRO_REGISTRY=mdns \
               shipcon-consignment-cli