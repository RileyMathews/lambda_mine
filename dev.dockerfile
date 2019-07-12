FROM ruby:2.5
RUN gem update --system
RUN gem install bundler
WORKDIR /app
COPY Gemfile* ./
COPY lambda_mine.gemspec ./
COPY . ./
RUN bundle
ENTRYPOINT [""]
CMD ["bash"]
