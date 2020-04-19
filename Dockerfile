FROM centos:centos8

MAINTAINER bastianwiessner

# RUN dnf config-manager --set-enabled PowerTools

RUN dnf install epel-release -y && \
#dnf config-manager --set-enabled PowerTools && \
dnf update -y && \
dnf group install "Development Tools" -y && \
dnf install wget libcurl-devel libXt-devel libxml2-devel openssl-devel texlive* gcc-* readline-devel pcre-devel libjpeg-turbo-devel libpng-devel libtiff-devel libicu-devel cairo-devel which -y

