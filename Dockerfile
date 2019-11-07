FROM ruby:2.6.5-alpine

RUN apk add --update build-base git

LABEL "repository"="https://github.com/dressipi/rubocop-diff"
LABEL "maintainer"="Dressipi <wizards@dressipi.com>"
LABEL "version"="1.0.1"


COPY bin/rubocop-diff /rubocop-diff
COPY README.md LICENSE /

RUN gem install bundler

ENTRYPOINT ["/rubocop-diff"]
