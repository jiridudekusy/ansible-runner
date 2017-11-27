FROM centos
MAINTAINER Jiří Dudek<jiri.dudek@gmail.com>
RUN yum -y install openssh-clients curl python-netifaces rsync
RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
    python get-pip.py && \
    rm -f get-pip.py
RUN pip install ansible
RUN pip install shade
