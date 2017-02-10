FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.2.6

RUN gem install findbugs_translate_checkstyle_format --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["findbugs_translate_checkstyle_format"]
CMD ["--help"]
