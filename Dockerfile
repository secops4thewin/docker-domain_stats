FROM centos:latest

MAINTAINER Mickey Perre

RUN yum install -y python36 git curl
# RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN pip3.6 install pyyaml rdap domain_stats
#RUN mkdir /opt/domain_stats && mkdir /opt/domain_stats/data
#RUN mkdir /var/log/domain_stats
#RUN ln -sf /dev/stderr /var/log/domain_stats/domain_stats.log
VOLUME ["/opt/domain_stats"]
RUN useradd -ms /bin/bash domain_stats
RUN chown -R domain_stats: /opt/domain_stats
USER domain_stats
EXPOSE 8000

STOPSIGNAL SIGTERM
CMD /bin/sh -c yes Y | domain_stats /opt/domain_stats && cd /opt/domain_stats