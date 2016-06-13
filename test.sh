#!/usr/bin/env bash

docker-compose run -e "RAILS_ENV=test" web rake db:migrate
docker-compose run -e "RAILS_ENV=test" web rake test
