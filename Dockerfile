FROM openjdk:17-alpine
MAINTAINER Say.li <120011676@qq.com>
LABEL maintainer="Say.li <120011676@qq.com>"
ENV TZ Asia/Shanghai
RUN apk --update add tzdata && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone
ADD https://www.apache.org/dyn/closer.lua/mina/ftpserver/1.1.2/apache-ftpserver-1.1.2-bin.zip /opt
WORKDIR /opt/apache-ftpserver-1.1.2
EXPOSE 2121
CMD  ./bin/ftpd.sh res/conf/ftpd-typical.xml