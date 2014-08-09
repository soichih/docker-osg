Docker build files to create common OSG images.

## OSG Client

You will need your X509 user certificate stored in ~/.globus (usercert.pem and userkey.pem).

Following command starts up OSG-client while mounting your current directory as /host inside the container. The container uses your host 
network (--net=host) so that CE can contact you back straight to your container. You might need to setup the usual GLOBUS_TCP_PORT_RANGE.

Add following to your .bashrc

```
alias osg="docker run -it --rm --net=host -v ~/.globus:/globus -v \`pwd\`:/host soichih/osg-client /bin/bash"
```

Then you can type "osg" to start up OSG client in any directory.

```
$ osg
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
