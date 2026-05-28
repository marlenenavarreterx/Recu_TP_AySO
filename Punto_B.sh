#!/bin/bash
# Cambiar dueño a p1c1_2026_u1 y grupo a p1c1_2026_g1 de forma recursiva
sudo chown -R p1c1_2026_u1:p1c1_2026_g1 /datos/

# Permisos: dueño todo(7), grupo leer/ejecutar(5), otros nada(0)
sudo chmod -R 750 /datos/

# Crear archivo de validación usando la identidad del usuario creado
sudo su -c "whoami > /datos/validar1.txt" p1c1_2026_u1
