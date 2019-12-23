## Create file cpusar.sh

#sar -u -r -b -w -q 1 3 >> /opt/sarinfo.out

sar -u 1 10 >> /opt/sarCPUinfo.out

#####



## Create file memsar.sh

#sar -u -r -b -w -q 1 3 >> /opt/sarinfo.out

sar -r 1 10 >> /opt/sarMEMinfo.out


## Create file top.sh

##will run every 5 minutes

top -b -n1 | head  >> /opt/topoutput
 

#inc=1; 
#while true; do
 #  top -b -n1 > output${inc}
  # sleep 300
  # inc=$(($inc+1))
#done

###

Now set all this is cron job

#* * * * * /opt/cpusar.sh 
#* * * * * /opt/memsar.sh
#* * * * * /opt/top.sh

