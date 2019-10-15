FROM trzeci/emscripten:latest

# 维护者信息
LABEL maintainer="1790403808@qq.com"

# 安装所有内置port
RUN python3 /emsdk_portable/emscripten/tag-1.38.45/embuilder.py build ALL
# 安装构建 imageMagick 必要的工具 
RUN apt-get update
RUN apt-get install -y autoconf libtool pkg-config
