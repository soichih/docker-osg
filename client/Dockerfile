FROM centos:centos6
#FROM centos

MAINTAINER Soichi Hayashi <hayashis@iu.edu>

RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm
RUN yum -y install yum-priorities

#instruction from https://twiki.grid.iu.edu/bin/view/Documentation/Release3/InstallOSGClient

#3.1
RUN rpm -Uvh http://repo.grid.iu.edu/osg/3.1/osg-3.1-el6-release-latest.rpm

#3.2
RUN rpm -Uvh http://repo.grid.iu.edu/osg/3.2/osg-3.2-el6-release-latest.rpm

RUN yum -y install osg-ca-certs osg-client

# Optionally, you may want to install HTCondor-G, too. 
# HTCondor-G is needed to submit jobs directly to the OSG sites.
RUN yum -y install condor

# User needs to provide .globus directory containing usercert.pem and userkey.pem
#VOLUME /root/.globus

RUN /usr/sbin/fetch-crl
#RUN /sbin/service fetch-crl-boot start
#RUN /sbin/service fetch-crl-cron start
#RUN /sbin/service condor start

#RUN /sbin/chkconfig fetch-crl-boot on
#RUN /sbin/chkconfig fetch-crl-cron on

RUN /sbin/chkconfig condor on

ADD ./bashrc /.bashrc

#EXPOSE 20000:21000
