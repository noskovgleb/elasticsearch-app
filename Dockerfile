FROM ruby:2.7
RUN apt-get update -qq && apt-get install -y build-essential nodejs curl
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt install -y yarn
RUN gem install bundler:2.1.2
RUN mkdir /app
ADD Gemfile /app/
ADD Gemfile.lock /app/
WORKDIR /app
RUN bundle install
ADD . /app
RUN rails webpacker:install

ENV PORT 3000
EXPOSE 3000
