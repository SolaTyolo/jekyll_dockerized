### Jekyll_Dockerized

> This is a personal package of jekyll containers

|Author|Email|
|---|---
|solat.yolo|solat.yolo@gmail.com|

> [中文简介](https://github.com/SolaTyolo/jekyll_dockerized/blob/master/README.zh-cn.md)

#### Usage

- git clone https://github.com/SolaTyolo/jekyll_dockerized.git
-First run please execute'docker-compose run -e jekyll-new '
-Open the web page 192.168.99.100:8080, see if it works
-After starting the service, just execute'docker-compose up -d jekyll '
-Enter the container:
    > `docker-compose exec jekyll bash`
    > The working directory is set in/usr/local/blog


#### SelfBuild

- If you want to build your own image, the executable'docker-compose build jekyll-build 'will generate the image based on the current Dockfile :blush:
- Then replace the mirror name in docker-compose.yml with the name of the mirror just generated, and repeat the steps of Usage

#### Extra

- If this article is helpful to you, you can give a Start :smirk:
