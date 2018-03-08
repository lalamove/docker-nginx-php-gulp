FROM lalamove/nginx-php:1.1.0-php55

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y -q nodejs

RUN sudo npm install --g gulp
RUN sudo npm install gulp laravel-elixir
RUN sudo npm uninstall npm -g

CMD ["/entry.sh"]
