watch -n 2 "(vcgencmd measure_temp && ./multissh.sh vcgencmd measure_temp) | grep temp"

