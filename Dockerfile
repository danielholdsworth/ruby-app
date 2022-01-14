FROM ruby:3.0.2-buster
RUN gem install bundler:2.2.22
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_11.x  | bash -
RUN apt-get -y install nodejs
RUN npm install
RUN npm install --global yarn -y