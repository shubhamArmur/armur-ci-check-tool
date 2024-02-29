FROM ruby:3.0

# throw errors if Gemfile has been modified since Gemfile.lock
# RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY . .
RUN gem install bundler
RUN bundle install

# COPY . .
EXPOSE 3000

CMD ["bundle", "exec", "ruby", "server.rb"]
# CMD ["./your-daemon-or-script.rb"]