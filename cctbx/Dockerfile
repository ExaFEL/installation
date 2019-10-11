#
# Dockerfile
#
# Latest version of centos
# V0.1.2: Original versions by Chuck Yoon, and Mona Uervirojnangkoorn
#
FROM centos:centos7
MAINTAINER Lee James O'Riordan <loriordan@lbl.gov>

RUN yum clean all && \
    yum -y install bzip2.x86_64 libgomp.x86_64 telnet.x86_64 gcc-c++

# https://repo.continuum.io/miniconda/
RUN wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
RUN chmod +x Miniconda2-latest-Linux-x86_64.sh
RUN echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh
RUN /bin/bash miniconda.sh -b -p /opt/conda
RUN rm miniconda.sh
ENV PATH /opt/conda/bin:$PATH

# psana-conda
RUN conda update -y conda
RUN conda install -y --channel lcls-rhel7 psana-conda=1.3.5 #Known working version with cctbx; later versions may not work
RUN conda install -y -c conda-forge "mpich>=3" mpi4py h5py pytables libtiff=4.0.6
RUN rm -rf /opt/conda/lib/python2.7/site-packages/numexpr-2.6.2-py2.7.egg-info

# cctbx
RUN conda install scons
ADD bootstrap.py bootstrap.py
ADD modules modules

#Build twice to ensure SCons fully completes
RUN python bootstrap.py build --builder=xfel --with-python=/opt/conda/bin/python --nproc=4
RUN python bootstrap.py build --builder=xfel --with-python=/opt/conda/bin/python --nproc=4

# recreate /reg/d directories for data
RUN mkdir -p /reg/g &&\
    mkdir -p /reg/d/psdm/CXI &&\
    mkdir -p /reg/d/psdm/cxi

# for profiling
RUN yum -y install strace
RUN conda uninstall --force mpich #Ensure local cluster MPI used
