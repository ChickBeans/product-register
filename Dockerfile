# ruby imageを使用
FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
# product-registerフォルダを作成
WORKDIR /product-register
# bundle context内のgemfileとGemfile.lockをproduct-register下に配置
COPY Gemfile Gemfile.lock /product-register/
RUN bundle install