FROM ruby:2.6.6

RUN apt update --fix-missing

RUN apt install -y build-essential libpq-dev libjpeg-dev libpng-dev nodejs imagemagick webp nano
RUN rm -rf /var/lib/apt/lists/*

RUN mkdir -p /app
WORKDIR /app

COPY Gemfile /app
COPY Gemfile.lock /app

RUN bundle install