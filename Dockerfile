FROM ubuntu-18.04
RUN sudo -E apt-get -qq update \
&& sudo -E apt-get -qq install $(curl -fsSL git.io/depends-ubuntu-1804) \
&& sudo -E apt-get -qq autoremove --purge \
&& sudo -E apt-get -qq clean \
&& sudo timedatectl set-timezone "Asia/Shanghai"
ENTRYPOINT /bin/bash