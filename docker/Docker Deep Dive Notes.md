# Docker学习笔记



## 常见Docker命令

```bash
$ docker image ls
```

- 查看本机docker镜像



```bash
$ docker container run -it ubuntu:16.04 /bin/bash
```

- docker container run : 告诉Dcoker daemon启动容器
- -it 开启容器的交互模式并将当前的Shell连接到容器终端
- ubuntu:16.04 基于哪个镜像
- /bin/bash 运行哪个进程



```bash
$ docker container ls
```

- 查看系统内处于运行状态的容器



```bash
$ Ctrl +P +Q 
```

- 退出容器并且不会杀死容器进程



```bash
$ docker exec -it [name] bash
```

- 将shell连接到一个运行中的容器终端



```bash
$ docker stop [name]
$ docker rm [name]
```

- 停止容器
- 杀死容器



```bash
$ docker container run -d 
	--name web1 
	--publish 8080:80 
	test:latest
```

- 端口的映射





## 第6章 Docker镜像

### 镜像与容器的关系

- 镜像是一种构建时结构 build-time
- 容器是一种运行时结构 run-time

- docker镜像通常比较小，会裁剪掉一些不必要的部分



```bash
$ docker [image] pull <repository>:<tag>
```

- 拉取镜像，若无指定tag，则拉取latest



```bash
$ docker image prune
```

- 移除悬虚(dangling)镜像



```bash
$ docker image ls --filter dangling=true
```

- 过滤docker image ls的输出内容



```bash
$ docker search <image-name>
```

- 搜索Docker Hub



```bash
$ docker image inspect <image>
```

- 展示了镜像的细节
- 元数据，层数据等等



```bash
$ docker image rm <image>
```

- 删除镜像以及相关的镜像层
- 若镜像层被共享，则只有所有依赖消除后才可删除镜像层
- 如果删除的镜像上有正在运行的容器，则需要停止并删除该镜像相关的有关容器



## 第7章 Docker 容器

- 容器是镜像的运行时实例
- 用户可以从单个镜像上启动一个或多个容器
- 容器或共享其所在主机的操作系统/内核



```bash
$ docker container run <image> <app>
```

- 指定启动所需的镜像和要运行的应用
- -it 参数可以将当前终端连接到容器终端Shell上
- 容器随着其中运行应用的退出而终止



```bash
$ docker container stop  <container-id or container-name>  #停止
$ docker container start  <container-id or container-name> #启动
$ docker container rm     <container-id or container-name> # 删除
```



### 容器 VS 虚拟机

- 容器引擎可以获取系统资源，比如进程树，文件系统和网络栈，接着将资源分割为安全的互相隔离的资源结构，称之为容器。
- Hypervisoer是硬件虚拟化 —— 将硬件物理资源划分为虚拟资源
- 容器是操作系统虚拟化 —— 将系统资源划分为虚拟资源



### 容器的生命周期与持久化

```bash
$ docker container run --name percy -it ubuntu:16.04 /bin/bash
```

- 停止容器运行并不会损毁容器或者其中的数据
- 卷(volume)才是容器中存储持久化的首选方式



### 容器的重启策略

这部分先跳过了



### Web服务器示例

```bash
$ docker container run -d --name webserver -p 80:8080 nigelpoulton/pluralsight-docker-ci
```

- -d 表示后台模式，在后台运行
- -p 80:8080 将Docker主机的端口映射到容器内，将Docker主机的80端口映射到了容器内的8080端口，意味着有流量访问主机的80端口时，流量会直接映射到容器内的8080端口



## 第8章 应用的容器化

#### 应用容器化过程

1. 编写应用代码
2. 创建Dockerfile 包括当前应用的描述、依赖以及如何运行这个应用
3. 对Dockerfile执行docker image build
4. 等待Docker将应用程序构建到Docker镜像中



#### 分析Dockerfile

```dockerfile
# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64
FROM alpine 

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]

```

- 第一行：```From```指令，指定镜像作为当前镜像的基础镜像层
- ```LABEL``` 标签 是一个键值对，通过增加标签的方式自定义元数据
  - maintainer 维护者信息
- ```RUN apk add --update nodejs nodejs-npm```在FROM指定的镜像层上新建了一个镜像层存储安装内容
- ```COPY ./src``` 将应用相关文件从构建上下文复制到当前镜像，并且新建一个镜像层存储
- ```WORKDIR /src``` 设置工作目录
- ```  RUN  npm install```根据package.json的配置信息安装依赖，新增镜像层
- ```EXPOSE 8080```通过TCP端口8080对外提供一个Web服务，作为镜像元数据
- ```ENTRYPOINT ["node", "./app.js"]```指定当前镜像的入口程序



```bash
$ docker image tag <current-tag> <new-tag>
```

- 为指定的镜像添加一个额外的标签，并且不覆盖已经存在的标签



```bash
$ docker image push <tag>
```

- 推送镜像到仓库



#### Dockerfile详述

- 注释以#开头

- 指令格式 ```INSTRUCTION argument```，不区分大小写，但是一般大写增加可读性

- ```Docker image build```按照行解析指令并且顺序执行

- 如何区分是否会新建镜像层：

  - 如果指令是添加新的文件或者程序——新建镜像层
  - 如果是告诉Docker如何构建或者运行——增加元数据

- 镜像构建的基本过程

  - 运行临时容器

  - 在该容器运行Dockerfile

  - 将运行结果保存为各新的镜像层

  - 删除临时容器

    

#### 生产环境的多阶段构建

- 对于镜像，过大的体积并不好
- 每个RUN会新增一个镜像才呢过，因此使用&&链接多个命令以及使用反斜杠\换行
- 构建工具不应该被移交给生产环境



于是有了多阶段构建

```dockerfile
FROM node:latest AS storefront
WORKDIR /usr/src/atsea/app/react-app
COPY react-app .
RUN npm install
RUN npm run build

FROM maven:latest AS appserver
WORKDIR /usr/src/atsea
COPY pom.xml .
RUN mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve
COPY . .
RUN mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTests

FROM java:8-jdk-alpine
RUN adduser -Dh /home/gordon gordon
WORKDIR /static
COPY --from=storefront /usr/src/atsea/app/react-app/build/ .
WORKDIR /app
COPY --from=appserver /usr/src/atsea/target/AtSea-0.0.1-SNAPSHOT.jar .
ENTRYPOINT ["java", "-jar", "/app/AtSea-0.0.1-SNAPSHOT.jar"]
CMD ["--spring.profiles.active=postgres"]
```

- storefront
- appserver
- production
  - COPY --from 从之前构建镜像只复制生产环境相关的应用代码



#### 缓存

- 会根据指定寻找缓存减少构建和存储空间

- 一旦有指令在缓存中没命中，则不再使用缓存

- ```bash
  $ docker image build --nocache=true 
  ```

  则强制忽略缓存

- 构建LInux镜像时，加上apt-get install时，加上```no-install-recommends```参数，安装核心依赖。



## 第9章 使用Docker Compose部署应用

### counter-app的docker-compose.yml

```yaml
version: "3.5"
services:
  web-fe:
    build: . # 指定Docker基于当前目录(.)下Dockerfile定义的指令来构建一个新镜像
    command: python app.py
    ports:  # 将容器内(-target)的5000端口映射到主机(published)的5000端口
      - target: 5000
        published: 5000
    networks: # 使得Docker将服务连接到指定的网络上
      - counter-net
    volumes: # 指定Docker将counter-vol卷(source:)挂载到容器内的 /code (target:) counter-vol应该是已经存在，或者是在文件下放的volumes下定义的
      - type: volume
        source: counter-vol
        target: /code
  redis:
    image: "redis:alpine"
    networks:
      counter-net:

networks:
  counter-net:

volumes:
  counter-vol:
```

- **version**  必须位于第一行，指定了Compose文件格式的版本
- **services** 用于定义不同的应用服务。Docker Compose会将每个服务部署在各自容器中
  - 名为web-fe的Web前端服务
  - 名为redis的内存数据库服务
- networks用于指引Docker创建新的网络。
  - 默认情况下，创建bridge网络：一种单主机、只能实现同一主机上容器的链接
  - 可以用driver属性指定不同的网络类型
  - 两个服务都连接到counter-net网络，因此他们可以通过名称解析到对方的地址
- volumes指引Docker创建新的卷



### 使用Docker-Compose部署应用

```bash
$ docker -compose up & 
$ docker -compose up -d  # 后台启动
$ docker-compose down  # 停止和关闭应用
$ docker-compose  ps # 查看应用状态
$ docker-compose top # 列出各个服务(容器)内运行的进程
$ docker-compose stop # 停止应用，但是不会删除资源
$ docker-compose rm # 删除停止应用的容器和网络，但是不会删除卷和镜像
$ docker-compose restart # 重启应用

```

- 通常使用```docker-compose up```命令，构建所需镜像，创建网络和卷，并启动容器
  - 默认查找docker-compose.yml或docker-compose.yaml
  - 使用```-f```参数，指定其他文件
  - 使用```-d```参数，后台启动
- 会将项目名称和Compose文件中定义的资源名称连起来作为新镜像的名称
- 停止应用后，卷并没有被删除。
  - 卷是用于数据的长期持久化存储的
  - 卷的生命周期与容器完全解耦



## 第11章 Docker 网络



