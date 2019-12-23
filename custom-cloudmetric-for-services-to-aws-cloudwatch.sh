#!/bin/bash

### This script runs on ec2 machine which put metric of running service in aws cloudwatch, if service is not running you can create then alarm to get notification on emails.

#instanceid='curl --silent http://169.254.169.254/latest/meta-data/instance-id'
#instanceid='curl --silent http://169.254.169.254/latest/meta-data/public-ipv4'



SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
#PATH=/root/.local/bin/aws


instanceid=`curl --silent http://169.254.169.254/latest/meta-data/public-ipv4`


SERVICE=apache2;

#if ps axu | grep -v grep | grep $SERVICE > /dev/null
if ps -eaf | grep -v grep | grep $SERVICE > /dev/null
then
    value="0"
else
  #  echo "$SERVICE is not running"
    value="1"
fi

aws cloudwatch put-metric-data --metric-name "$instanceid" --namespace "ApacheMetricsWithPublicIP" --value "$value"  --region us-east-1

