#!/bin/bash
echo $((vcgencmd measure_temp && ./multissh.sh vcgencmd measure_temp) | grep temp | grep -o '[0-9][0-9]\.[0-9]\S\S')
