FROM ruby:2.6.1
WORKDIR /app
RUN gem install rack
RUN gem install puma
COPY . /app
CMD ["puma", "config.ru"]