FROM centos

RUN yum install -y gcc gcc-c++ openssl-devel glibc-devel git libtool make unzip wget boost-devel libdb-cxx-devel libdb4-cxx-devel.x86_64 libdb4-devel miniupnpc-devel qrencode wget
RUN wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -ivh epel-release-latest-7.noarch.rpm && \
    yum -y install miniupnpc-devel pwgen
RUN git clone https://github.com/exofoundation/CivX-Qt.git 
COPY build.sh /CivX-Qt/src/build.sh
RUN chmod +x CivX-Qt/src/build.sh 
RUN ./CivX-Qt/src/build.sh
