FROM ruby:2.5-alpine3.7 AS base
COPY Gemfile app.rb ./
RUN bundle install
EXPOSE 4567
CMD ruby app.rb -o 0.0.0.0
