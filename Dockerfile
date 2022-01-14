FROM cimg/ruby:3.0.2
RUN gem install bundler:2.2.22
RUN sudo apt-get update
RUN sudo apt-get -y install curl gnupg
RUN sudo rm /var/lib/apt/lists/lock
RUN curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
RUN sudo apt-get -y install nodejs
RUN sudo npm install
RUN sudo npm install --global yarn -y