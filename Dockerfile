FROM ruby:2

RUN gem install rspec

WORKDIR /ruby

COPY . .
