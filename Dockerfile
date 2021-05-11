# Author: Kongho Poon
# Email: kongho@3ncto.com
# Verion: 1.0.1
# Copyright: 3NCTO Co., Ltd.
# Description: for 3N Online PHP Development image

FROM centos:centos7.5.1804

MAINTAINER Kongho Poon, <kongho@3ncto.com>

COPY . /tmp/

RUN set -o pipefail && \
	yum install -y vim wget net-tools unzip rsync && \
	localedef -c -f UTF-8 -i zh_CN zh_CN.utf8

ENV LC_ALL "zh_CN.UTF-8"

# 设置侦听端口
EXPOSE 80 3306

CMD /sbin/init

STOPSIGNAL SIGTERM