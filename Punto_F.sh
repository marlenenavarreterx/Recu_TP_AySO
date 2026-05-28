#!/bin/bash
# Crear la carpeta Punto_F en el Home
mkdir -p ~/Punto_F

# Obtener la IP pública actual de la máquina virtual
IP=$(curl -s ifconfig.me)

# Extraer el nombre del modelo del procesador de forma limpia
CPU_INFO=$(grep -m 1 "model name" /proc/cpuinfo | awk -F: '{print $2}' | xargs)

# Escribir el reporte final con el formato exigido por la cátedra
echo "Mi ip publica es: $IP" > ~/Punto_F/Filtro_Avanzado.txt
echo "CPU Modelo: $CPU_INFO" >> ~/Punto_F/Filtro_Avanzado.txt
