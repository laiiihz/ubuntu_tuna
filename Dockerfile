FROM ubuntu:eoan
LABEL maintainer="laiiihz" description="ubuntu with tuna mirror" version="0.1.0"
RUN mv /etc/apt/sources.list /etc/apt/sources.list.bak
RUN echo "deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ eoan main restricted universe multiverse\n\
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ eoan-updates main restricted universe multiverse\n\
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ eoan-backports main restricted universe multiverse\n\
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ eoan-security main restricted universe multiverse\n" > /etc/apt/sources.list
