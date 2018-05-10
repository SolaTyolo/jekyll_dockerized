#!/bin/sh

docker pull registry.cn-hangzhou.aliyuncs.com/solat/blog_jekyll
docker run -p 80:4000 -v $(pwd):/usr/local/blog -e JEKYLL_NEW=true registry.cn-hangzhou.aliyuncs.com/solat/blog_jekyll