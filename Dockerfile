FROM daocloud.io/library/ruby:2.2.7-alpine

# apk替换为国内源
ARG GWF=True
RUN if [ ${GWF} = True ]; then \
    cp /etc/apk/repositories /etc/apk/repositories.bak \
    && echo "http://mirrors.aliyun.com/alpine/v3.4/main/" > /etc/apk/repositories \
;if

RUN apk add --no-cache build-base gcc bash cmake

# gem 替换为国内源
RUN if [ ${GWF} = True ]; then \
    gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/ \
    && gem sources -u  \
 ;if

RUN gem install jekyll

EXPOSE 4000

ARG WORKDIR=/usr/local/blog
RUN mkdir -p ${WORKDIR}
WORKDIR ${WORKDIR}

# create new site by setting -e JEKYLL_NEW=true
ENV JEKYLL_NEW false

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
# on every container start we'l'
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000" ]
