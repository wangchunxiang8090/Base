FROM centos:6
MAINTAINER lizhenliang
RUN yum install -y gcc gcc-c++ make openssl-devel pcre-devel
ADD nginx-1.12.1.tar.gz /tmp
RUN cd /tmp/nginx-1.12.1 && ./configure --prefix=/usr/local/nginx && make -j 2 && make install
RUN rm -f /usr/local/nginx/conf/nginx.conf 
COPY nginx.conf /usr/local/nginx/conf

EXPOSE 80
CMD ["/usr/local/nginx/sbin/nginx", "-g", "daemon off;"]
