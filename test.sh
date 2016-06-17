#!/usr/bin/env bash

docker-compose run -e "RAILS_ENV=test" app rake db:migrate
docker-compose run -e "RAILS_ENV=test" app rake test
