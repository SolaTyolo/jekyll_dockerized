FROM daocloud.io/library/ruby:2.2.7-alpine

RUN apk add --no-cache build-base gcc bash cmake

RUN gem install jekyll

EXPOSE 4000

WORKDIR /site

# create new site by setting -e JEKYLL_NEW=true
ENV JEKYLL_NEW false

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# on every container start we'l'
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]