FROM ubuntu:18.04
RUN apt-get -qq update \
&& apt-get -qq install build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs gcc-multilib g++-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler antlr3 gperf wget swig rsync \
&& apt-get -qq autoremove --purge \
&& apt-get -qq clean \
&& timedatectl set-timezone "Asia/Shanghai" \
&& export FORCE_UNSAFE_CONFIGURE=1
ENTRYPOINT ["/bin/bash"]
