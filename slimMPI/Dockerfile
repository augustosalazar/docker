FROM python:3.8-slim

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y \
      build-essential \
      libopenmpi-dev \
      python3-dev \
      python3-pip \
      nano

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 1

RUN python3 -m pip install --upgrade pip setuptools wheel Cython mpi4py numpy
RUN echo "btl_base_warn_component_unused = 0" >> /etc/openmpi/openmpi-mca-params.conf 
RUN adduser --disabled-password --gecos "" mpirun
RUN echo "mpirun ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir /app
RUN chown mpirun:mpirun /app
