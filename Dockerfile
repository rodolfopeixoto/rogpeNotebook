FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /sispict
WORKDIR /sispict
ADD Gemfile /sispict/Gemfile
ADD Gemfile.lock /sispict/Gemfile.lock
RUN bundle install
ADD . /sispict 
