FROM ubuntu:24.04

RUN set -eux; \
    dpkg --add-architecture amd64; \
    sed -i '/ports.ubuntu.com/a Architectures: arm64' /etc/apt/sources.list.d/ubuntu.sources; \
    printf 'Types: deb\nURIs: http://archive.ubuntu.com/ubuntu/\nSuites: noble noble-updates noble-backports noble-security\nComponents: main universe restricted multiverse\nArchitectures: amd64\nSigned-By: /usr/share/keyrings/ubuntu-archive-keyring.gpg\n' > /etc/apt/sources.list.d/ubuntu-amd64.sources; \
    apt update && apt install -y \
        gdb-multiarch qemu-user patchelf nasm binutils python3 \
        libc6:amd64 libstdc++6:amd64 libgcc-s1:amd64

WORKDIR /code
