[![Build Status](https://travis-ci.org/pads/rails_docker_wmrug.svg?branch=master)](https://travis-ci.org/pads/rails_docker_wmrug)

# rails_docker_wmrug

Dockerized Rails application for [WMRUG](http://www.meetup.com/West-Midlands-Ruby-User-Group-WMRUG/events/231242177/)

## Instructions

- [Install Docker](https://www.docker.com/) - follow the get started page for your OS.
- [Install Docker Compose](https://docs.docker.com/compose/install/)

This assumes you are running Docker either natively on Linux or Docker for Mac.

Symlink `docker-exec` to a bin directory in your `PATH` and use this to run your usual rails/rake commands.

    docker-compose up -d

Open `http://localhost:3000` in your browser.     
