watch -n 5 "(vcgencmd measure_temp && ./multissh.sh vcgencmd measure_temp) | grep temp"

