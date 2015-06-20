from debian:jessie

run apt-get update && \
    apt-get install -y python python-pip python-numpy python-scipy python-dev python-h5py python-pip python-nose g++ libopenblas-dev git gfortran libhdf5-dev && \
    rm -rf /var/lib/apt/lists/*
run pip install Theano
run pip install Cython
run git clone https://github.com/fchollet/keras keras
workdir /keras
run python setup.py install
