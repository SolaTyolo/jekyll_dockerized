#!/bin/bash
set -e

if [ "$JEKYLL_NEW" = true ]; then
  echo "INFO: making new jekyll site!"
  jekyll new . --force
fi

if [ ! -f Gemfile ]; then
  echo "Warning: 蛤, 这里没有Gemfile文件"
  echo "请先确定你已经初始化过"
  echo ""
  echo "docker-compose up -d jekyll-init"
  echo ""
  exit 1
fi

bundle install

exec "$@"