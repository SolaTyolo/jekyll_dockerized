### Jekyll_Dockerized

> 这是个人封装的jekyll的容器

|Author|Email|
|---|---
|solat.yolo|solat.yolo@gmail.com|



#### Usage

- git clone https://github.com/SolaTyolo/jekyll_dockerized.git
- 首次运行请执行 `docker-compose run -e jekyll-new`
- 打开网页192.168.99.100:8080,看是否有用
- 以后启动服务只需执行`docker-compose up -d jekyll`
- 进入容器:
    > `docker-compose exec jekyll bash`
    > 
    >  工作目录设置于/usr/local/blog


#### SelfBuild

- 若是您想自行构建镜像，可执行`docker-compose build jekyll-build`会根据当前的Dockfile生成镜像:blush:
- 之后将`docker-compose.yml`中的镜像名替换成刚才生成镜像的名字即可，后重复Usage的步骤

#### Extra

- 若是这边文章对您有帮助，可以给个Start :smirk: