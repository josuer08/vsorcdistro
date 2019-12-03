echo $(
echo $(ip addr | grep brd |grep -o -E "([0-9]{1,3}[\.]){3}[0-9]{1,3}") | awk '{print $1}';
echo "Free memory:";
free -m | grep Mem |  awk  '{print $7}';
echo "MB Idle cpu:";
mpstat 1 1| grep all | grep Average | awk '{print $12}';
echo "Network usage Kbps:";
ifstat -n -b -i eth0  1 1 | grep [0-9]$;
echo "Temperature:";
vcgencmd measure_temp | grep temp | grep -o '[0-9][0-9]\.[0-9]\S\S';)

