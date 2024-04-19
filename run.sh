#!/bin/bash

git pull
docker build -t docker_sample .
docker run --rm -it -v docker_sample_storage:/rails/storage -p 3000:3000 --env RAILS_MASTER_KEY=9dfd90b383427c0b9a983ac6d270218e docker_sample
