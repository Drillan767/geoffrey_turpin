FROM ruby:latest
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nano
RUN mkdir /geoffreyturpin
WORKDIR /geoffreyturpin
COPY Gemfile /geoffreyturpin/Gemfile
COPY Gemfile.lock /geoffreyturpin/Gemfile.lock
RUN bundle install
COPY . /geoffreyturpin
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get update && apt-get install -y nodejs
RUN npm install