FROM trzeci/emscripten:latest

# 维护者信息
LABEL maintainer="1790403808@qq.com"

# 安装构建 imageMagick 必要的工具  
#看看能不能减少几个工具 shtool autogen
RUN apt-get update
RUN apt-get install -y autoconf libtool pkg-config
