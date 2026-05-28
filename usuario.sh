#!/bin/bash
sudo groupadd p1c1_2026_g1
sudo useradd -m -G p1c1_2026_g1 p1c1_2026_u1
echo "p1c1_2026_u1:clave1" | sudo chpasswd
