FROM ubuntu:18.04
RUN apt-get -qq update \
&& apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-1804) \
&& apt-get -qq autoremove --purge \
&& apt-get -qq clean \
&& timedatectl set-timezone "Asia/Shanghai"
ENTRYPOINT ["/bin/bash"]