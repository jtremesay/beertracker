# Set tools
DOCKER ?= docker


# By default, build the docker image
all: build-image

# Build the docker image
build-image:
	$(DOCKER) build -t beertracker:latest .


# Run beertracker with docker compose in non detached mode
# Is accessible at address http://localhost:8000
serve: build-image
	$(DOCKER) compose up --remove-orphans


serve-debug: build-image
	$(DOCKER) compose -f docker-compose.yaml -f docker-compose.dev.yaml up --remove-orphans 



# Display an help
help:
	@echo "usage: make command"
	@echo ""
	@echo "Available commands":
	@echo "    all                    alias for build-image"
	@echo "    build-image            build the docker image"
	@echo "    help                   display the help"
	@echo "    serve                  run with docker compose"
	@echo "    serve-debug            run with docker compose in debug mode + autoreload"




# Declare the phony targets
.PHONY: all build-image help serve