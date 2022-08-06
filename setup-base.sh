#!/bin/bash

# Ubuntu 22.04 created with Microsoft Store Application
# User: wrk; Password: wrk

cat /etc/os-release # TODO: verify OS Version before execute this setup

# PRETTY_NAME="Ubuntu 22.04.1 LTS"
# NAME="Ubuntu"
# VERSION_ID="22.04"
# VERSION="22.04.1 LTS (Jammy Jellyfish)"
# VERSION_CODENAME=jammy
# ID=ubuntu
# ID_LIKE=debian
# HOME_URL="https://www.ubuntu.com/"
# SUPPORT_URL="https://help.ubuntu.com/"
# BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
# PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
# UBUNTU_CODENAME=jammy

sudo apt update         # OK
sudo apt upgrade -y     # OK
sudo apt autoremove -y  # OK

# TODO: Document package versions
sudo apt install -y \
  build-essential \
  cmake \
  unzip \
  zip

# The following additional packages will be installed:
#   bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc gcc-11 gcc-11-base
#   libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6 libatomic1
#   libc-dev-bin libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl libfakeroot
#   libfile-fcntllock-perl libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23 libitm1
#   libjbig0 libjpeg-turbo8 libjpeg8 liblsan0 libmpc3 libnsl-dev libquadmath0 libstdc++-11-dev libtiff5
#   libtirpc-dev libtsan0 libubsan1 libwebp7 libxpm4 linux-libc-dev lto-disabled-list make manpages-dev
#   rpcsvc-proto
# Suggested packages:
#   bzip2-doc cpp-doc gcc-11-locales debian-keyring g++-multilib g++-11-multilib gcc-11-doc gcc-multilib
#   autoconf automake libtool flex bison gdb gcc-doc gcc-11-multilib glibc-doc bzr libgd-tools
#   libstdc++-11-doc make-doc
# The following NEW packages will be installed:
#   build-essential bzip2 cpp cpp-11 dpkg-dev fakeroot fontconfig-config fonts-dejavu-core g++ g++-11 gcc
#   gcc-11 gcc-11-base libalgorithm-diff-perl libalgorithm-diff-xs-perl libalgorithm-merge-perl libasan6
#   libatomic1 libc-dev-bin libc-devtools libc6-dev libcc1-0 libcrypt-dev libdeflate0 libdpkg-perl
#   libfakeroot libfile-fcntllock-perl libfontconfig1 libfreetype6 libgcc-11-dev libgd3 libgomp1 libisl23
#   libitm1 libjbig0 libjpeg-turbo8 libjpeg8 liblsan0 libmpc3 libnsl-dev libquadmath0 libstdc++-11-dev
#   libtiff5 libtirpc-dev libtsan0 libubsan1 libwebp7 libxpm4 linux-libc-dev lto-disabled-list make
#   manpages-dev rpcsvc-proto
# 0 upgraded, 53 newly installed, 0 to remove and 0 not upgraded.

build_essential_packages=(gcc,dpkg,fakeroot) # TODO: show versions to doc

cmake --version

# TODO: add OhMyPush v3 https://ohmyposh.dev/

echo $TERM # verify xterm-256-color

# Download Oh My Push 3
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Change Bash Prompt to start Oh My Push
# TODO: verify ~/.bashrc exists
echo 'eval "$(oh-my-posh init bash)"' >> ~/.bashrc

mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip -o ~/.poshthemes/themes.zip -d ~/.poshthemes # warning: overwrite theme files
chmod u+rw ~/.poshthemes/*.omp.*
rm ~/.poshthemes/themes.zip

# Install FiraCode in Windows with NerdFonts
# Adding profile in windows terminal
# {
#                 "colorScheme": "Campbell",
#                 "font": 
#                 {
#                     "face": "FiraMono NF",
#                     "size": 11
#                 },
#                 "guid": "{60c3e313-8e1a-58f6-8175-3650c2bd2b26}",
#                 "hidden": false,
#                 "name": "Ubuntu 22.04 LTS",
#                 "source": "CanonicalGroupLimited.Ubuntu22.04LTS_79rhkp1fndgsc"
#             }

