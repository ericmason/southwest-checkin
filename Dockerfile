FROM ruby:2.4

# RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /usr/src/app
COPY . .
RUN bundle install

# ENTRYPOINT RAILS_ENV=production puma
