#!/bin/bash
# Crear la carpeta Punto_E en el Home
mkdir -p ~/Punto_E

# Filtrar solo el total de memoria RAM del sistema y guardarlo
grep "MemTotal" /proc/meminfo > ~/Punto_E/Filtro_basico.txt

# Agregar el modelo de CPU y su frecuencia al mismo archivo
grep "model name" /proc/cpuinfo | head -n 1 >> ~/Punto_E/Filtro_basico.txt
