Docker build files to create common OSG images.

## OSG Client

You will need your X509 user certificate stored in ~/.globus (usercert.pem and uerkey.pem).

Following command starts up OSG-client mounting your current directory as /host inside the container. The container uses your host 
network (--net=host) so that CE can contact you back straight to your container. You might need to setup the usual GLOBUS_TCP_PORT_RANGE.

To start

```
docker run --net=host -v ~/.globus:/globus -v `pwd`:/host -t -i soichih/osg-client /bin/bash
```

Once the container starts up, you can do the usual OSG stuff like...

```
starting condor
Starting Condor daemons:                                   [  OK  ]
initializing proxy
Your identity: /DC=com/DC=DigiCert-Grid/O=Open Science Grid/OU=People/CN=Soichi Hayashi 238
Creating proxy .................................................................................................. Done
Your proxy is valid until: Wed Jul  9 11:51:45 2014
welcome to OSG client!
bash-4.1# globus-job-run ce.grid.iu.edu /usr/bin/whoami
osg

```
