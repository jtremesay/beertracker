# Set tools
DOCKER ?= docker


# By default, build the docker image
all: docker-image

# Build the docker image
docker-image:
	$(DOCKER) build -t beertracker:latest .


# Display an help
help:
	@echo "usage: make command"
	@echo ""
	@echo "Available commands":
	@echo "    all                    alias for build-image"
	@echo "    build-image            build the docker image"
	@echo "    help                   display the help"




# Declare the phony targets
.PHONY: all docker-image help