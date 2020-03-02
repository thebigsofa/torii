FROM ruby:2.6.3

RUN mkdir -p /torii
WORKDIR /torii
ADD . .

RUN gem install bundler -v 2.1.4 && \
    bundle install --jobs `nproc` --retry 5

EXPOSE 3000
SHELL ["/bin/bash", "-c"]
CMD ["bundle", "exec", "rails", "server", "-p", "3000", "-b", "0.0.0.0"]
