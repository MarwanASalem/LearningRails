FROM ruby:2.6.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /blog
WORKDIR /blog

COPY Gemfile /blog/Gemfile
COPY Gemfile.lock /blog/Gemfile.lock

RUN gem install bundler:2.0.2
RUN bundle install

COPY . /blog
