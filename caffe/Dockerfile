from debian:jessie

run apt-get update && \
    apt-get install -y libprotobuf-dev \
        libleveldb-dev \
        libsnappy-dev \
        libopencv-dev \
        libhdf5-serial-dev \
        protobuf-compiler \
        libatlas-base-dev \
        libgflags-dev \
        libgoogle-glog-dev \
        liblmdb-dev  \
        build-essential \
        python \
        git \
        python-pip && \
    apt-get install -y --no-install-recommends libboost-all-dev && \
    rm -rf /var/lib/apt/lists/*
run git clone https://github.com/BVLC/caffe
workdir /caffe
add Makefile.config /caffe/Makefile.config

# Debian lib files have a slightly different name than the Ubuntu version expected.
run ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial.so.8.0.2 /usr/lib/x86_64-linux-gnu/libhdf5.so && \
    ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial_hl.so.8.0.2 /usr/lib/x86_64-linux-gnu/libhdf5_hl.so
run apt-get install -y gcc-4.6 g++-4.6 gcc-4.6-multilib g++-4.6-multilib

run make all -j$(cat /proc/cpuinfo | awk '/^processor/{print $3}' | tail -1)
