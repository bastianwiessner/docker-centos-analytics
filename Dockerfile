FROM centos:centos8

MAINTAINER bastianwiessner

# Inlcude EPEL Repo
RUN dnf install -y epel-release  
# Update R Packages
RUN dnf update -y 
# Install build tools
RUN dnf group install -y "Development Tools"  
# install necessary operating system libraries
RUN dnf install -y \
 cairo-devel \
 gcc-gfortran \
 libicu-devel \
 libjpeg-turbo-devel \
 libpng-devel \
 libtiff-devel \
 libXt-devel \
 libxml2-devel \
 openssl-devel \
 pcre-devel \
 readline-devel \
 texlive* \
 wget \
 which \
 libcurl-devel
