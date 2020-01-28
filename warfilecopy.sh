#!/bin/bash
# this line excute on Slave machines automatically
rsync /var/lib/jenkins/workspace/GameOfLife/gameoflife-web/target/gameoflife.war ec2-user@54.152.111.51:/tmp

ssh -tt ec2-user@54.152.111.51 "
sudo mv /tmp/gameoflife.war /usr/share/tomcat/webapps/
sudo chown tomcat:tomcat /usr/share/tomcat/webapps/*.war
exit

"



