#!/bin/bash
set -e

if [ "$JEKYLL_NEW" = true ]; then
  echo "INFO: jekyll 初始化中···!"
  jekyll new . --force
fi

if [ ! -f Gemfile ]; then
  echo "Warning: 蛤, 这里没有Gemfile文件"
  echo "请先确定你已经初始化过"
  echo ""
  echo "docker-compose run -e JEKYLL_NEW=true jekyll"
  echo ""
  exit 1
fi

bundle install

exec "$@"