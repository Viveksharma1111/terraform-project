#!/bin/bash
yum update -y

yum install httpd -y 

systemctl start httpd 

systemctl enable httpd 

yum install docker -y 

systemctl start docker 

systemctl enable docker 

yum install git -y

docker pull viveksharma11/docker-web:v2