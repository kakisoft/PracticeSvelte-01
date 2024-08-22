FROM ubuntu:24.04

WORKDIR /svelte_app01

#========================================
#        execute setting script
#========================================
COPY setting_scripts/* /tmp/setting_scripts/
RUN chmod +x /tmp/setting_scripts/*
RUN /tmp/setting_scripts/install-build-packages.sh
RUN rm -r /tmp/setting_scripts/

#========================================
#          setting timezone
#========================================
ARG TZ
ENV TZ=${TZ}
RUN ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime
RUN dpkg-reconfigure --frontend noninteractive tzdata
