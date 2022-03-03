#!/bin/bash
set -ex


# Apply the migrations
./manage.py migrate

# Run the asked command
exec $@