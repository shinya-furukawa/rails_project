FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN mkdir /rails_web
WORKDIR /rails_web
ADD Gemfile /rails_web/Gemfile
ADD Gemfile.lock /rails_web/Gemfile.lock
RUN bundle install
ADD . /rails_web