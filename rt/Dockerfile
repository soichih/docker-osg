FROM centos:centos6
#FROM centos

MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install wget vim tar cpan rt3
#RUN /sbin/service rt3 start

EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]
