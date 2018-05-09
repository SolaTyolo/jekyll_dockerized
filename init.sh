#!/bin/sh

docker pull solat/blog_jekyll 
docker run -p 80:4000 -v $(pwd):/site -e JEKYLL_NEW=true solat/blog_jekyll 