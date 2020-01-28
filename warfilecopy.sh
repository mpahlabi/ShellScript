ssh -tt ec2-user@184.72.182.254 '
rsync /var/lib/jenkins/workspace/GameOfLife/gameoflife-web/target/gameoflife.war ec2-user@54.152.111.51:/tmp
exit
'
ssh -tt ec2-user@54.152.111.51 '
chown root:tomcat /tmp/*.war
mv /tmp/gameoflife.war /usr/share/tomcat/webapps/
'



