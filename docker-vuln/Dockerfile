FROM centos:centos7.2.1511
MAINTAINER adrianp@stindustries.net

# If you need to use a proxy to get to the internet, build with:
#   docker build --build-arg CURL_OPTIONS="..."
#
# The default is empty (no special options).
#
ARG CURL_OPTIONS=""

# Prep environment
#
RUN yum -y install deltarpm && yum -y update

# Install build utils
#
RUN touch /var/lib/rpm/* && \
    yum -y install bison gnutls-devel gcc libidn-devel gcc-c++ bzip2 && \
    yum clean all

# wget - command line utility (installed via. RPM)
#
# https://www.cvedetails.com/cve/CVE-2014-4877/
#
RUN curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/wget-1.14-10.el7.x86_64.rpm && \
    yum -y install wget-1.14-10.el7.x86_64.rpm && \
    rm *.rpm

# tomcat - Java application (RPM install)
#
# CVE-2013-4590, CVE-2014-0119, CVE-2014-0099, CVE-2014-0096, CVE-2014-0075
#
RUN curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/tomcat-7.0.42-4.el7.noarch.rpm && \
    curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/tomcat-el-2.2-api-7.0.42-4.el7.noarch.rpm && \
    curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/tomcat-jsp-2.2-api-7.0.42-4.el7.noarch.rpm && \
    curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/tomcat-lib-7.0.42-4.el7.noarch.rpm && \
    curl -LO ${CURL_OPTIONS} \
      http://vault.centos.org/7.0.1406/os/x86_64/Packages/tomcat-servlet-3.0-api-7.0.42-4.el7.noarch.rpm && \
    touch /var/lib/rpm/* && \
    yum -y install yum install tomcat-7.0.42-4.el7.noarch.rpm tomcat-lib-7.0.42-4.el7.noarch.rpm tomcat-servlet-3.0-api-7.0.42-4.el7.noarch.rpm tomcat-el-2.2-api-7.0.42-4.el7.noarch.rpm tomcat-jsp-2.2-api-7.0.42-4.el7.noarch.rpm && \
    rm -f *.rpm
