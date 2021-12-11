FROM ruby:2.7

WORKDIR /usr/src

COPY ./Gemfile* ./
RUN bundle install

COPY . .

CMD ["ruby", "tst_httpclient.rb"]