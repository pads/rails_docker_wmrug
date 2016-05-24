# Our base image from the Docker hub (https://hub.docker.com/_/ruby/)
FROM ruby:2.3.1

# Install a modern JS runtime
RUN apt-get update && apt-get upgrade -y
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y nodejs

# Setup a home for the app within the container
ENV APP_HOME /wmrug
RUN mkdir $APP_HOME
# Any commands run will use /wmrug as the working directory
WORKDIR $APP_HOME

# Copy our app to the container filesystem
ADD . $APP_HOME
RUN bundle install
