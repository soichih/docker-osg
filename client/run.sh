
#docker run --dns=192.168.96.4 --dns=192.168.97.12 -t -i centos /bin/bash
#docker run -t -i centos /bin/bash

docker run --net=host -v ~/.globus:/globus -v `pwd`:/host -t -i soichih/osg-client /bin/bash

