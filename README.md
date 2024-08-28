# Crear playlist diaria para Music Player Daemon en este caso usando Music Lounge OS
- En base a la cantidad de ``*.mp3``al bootear crea la playlist, que será diferente
   cada día de la semana y no diferente cada booteo. Mediante crontab nos aseguramos que
   con tan solo enchufar el powerbank a la Raspberry Pi 3b, comience a reproducir música.

# Clonar o crear el sript, dar permiso de ejecución, agregar a crontab:
- nano $HOME/play.sh
- chmod +x $HOME/play.sh
- crontab -e
- @reboot $HOME/play.sh
- sudo reboot
