### Jekyll_Dockerized

> 这是个人封装的jekyll的容器

|Author|Email|
|---|---
|solat.yolo|solat.yolo@gmail.com|



#### Usage

- git clone https://github.com/SolaTyolo/jekyll_dockerized.git
-  (首次请先执行`init.sh`)，只需执行一次
- 之后就可直接执行`docker-compose up -d`
- 进入容器:
    > `docker-compose exec jekyll bash`
    > 
    >  工作目录设置于/usr/local/blog


#### SelfBuild

- 若是您想自行构建镜像，可执行`build.sh`会生成blog_jekyll的镜像，但是构建时间比较久，请您耐心等待:blush:
- 之后将`docker-compose.yml`和`init.sh`中的镜像替换成刚才生成镜像的名字即可


#### Extra

- 若是这边文章对您有帮助，可以给个Start :smirk: