#!/bin/bash

# Obtener el número total de archivos MP3
total_songs=$(mpc listall | grep -i '\.mp3$' | wc -l)

# Obtener el día de la semana (1-7 donde 1 = Lunes)
day_of_week=$(date +%u)

# Calcular el número de canciones para la playlist
songs_per_day=$(($total_songs / 7))

# Calcular el desplazamiento para seleccionar canciones
offset=$(($songs_per_day * ($day_of_week - 1)))

# Crear la playlist del día
mpc clear
mpc listall | grep -i '\.mp3$' | tail -n +$offset | head -n $songs_per_day | mpc add

# Guardar la playlist
playlist_name="playlist_$(date +%A)"
mpc save $playlist_name

mpc load playlist_$(date +%A)
mpc play

echo "Playlist '$playlist_name' creada con $songs_per_day canciones."
