#!/bin/bash
# Crear el grupo común e instalar al segundo usuario con clave1
sudo groupadd p1c1_2026_Todos
sudo useradd -m -g p1c1_2026_Todos p1c1_2026_u2
echo "p1c1_2026_u2:clave1" | sudo chpasswd

# Agregar también al primer usuario a este nuevo grupo común
sudo usermod -aG p1c1_2026_Todos p1c1_2026_u1

# Cambiar el grupo propietario de /datos al grupo común
sudo chgrp -R p1c1_2026_Todos /datos/

# Dar permiso de escritura al grupo (+w) de forma recursiva
sudo chmod -R g+w /datos/

# Permitir a otros (o) listar y entrar a /datos (+rx) pero sin leer los archivos internos
sudo chmod o+rx /datos

# Agregar la salida del comando id del usuario 2 al archivo de validación anterior
sudo su -c "id >> /datos/validar1.txt" p1c1_2026_u2
