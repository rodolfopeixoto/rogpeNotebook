FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rogpeNotebook
WORKDIR /rogpeNotebook
ADD Gemfile /rogpeNotebook/Gemfile
ADD Gemfile.lock /rogpeNotebook/Gemfile.lock
RUN bundle install
ADD . /rogpeNotebook 
