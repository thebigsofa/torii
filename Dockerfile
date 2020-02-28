FROM ruby:2.5.1

RUN mkdir -p /torii
WORKDIR /torii
COPY Gemfile Gemfile.lock ./
RUN gem install bundler -v 2.1.4 && \
    bundle install --jobs `nproc` --retry 5 && \
    rm Gemfile Gemfile.lock

COPY . /torii

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", -p, "3000", "-b", "0.0.0.0"]
