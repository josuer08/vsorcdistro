# Pasos para mantener vivo el servicio mientras se escribe a el desde varios lugares:
+ `mkfifo fifo`
+ `exec 3>fifo` deja un file descriptor conectado a el fifo par evitar EOF
+ `programa < fifo` o si no `cat fifo | programa`
+ `echo "comandoVSORC" >> fifo`
+ `echo "otro comandoVSORC" >> fifo`
+ `exec 3>&-` Esto cierra el tercer file descriptor
