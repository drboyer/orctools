FROM ubuntu:16.04
ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y cmake git gcc g++ libssl-dev libsasl2-dev tzdata
RUN git clone --depth 1 https://git-wip-us.apache.org/repos/asf/orc.git && \
    mkdir orc/build && \
    cd orc/build && \
    cmake .. -DBUILD_JAVA=OFF && \
    make package && \
    make install
