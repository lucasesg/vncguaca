#!/bin/bash

echo "
#########################################
#
#
#	SCRIPT DE INSTALAÇÃO VNC
#
#
#########################################"

sleep 5

# Atualizar o sistema e instalar x11vnc

sudo apt update && sudo apt install -y x11vnc

# Criar o arquivo de serviço para x11vnc

echo '[Unit]
Description=x11vnc service
After=multi-user.target

[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -forever -display :0 -auth guess -passwd abc,123
ExecStop=/usr/bin/killall x11vnc
Restart=on-failure

[Install]
WantedBy=multi-user.target' | sudo tee /lib/systemd/system/x11vnc.service

sudo systemctl daemon-reload
sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service

# Escrever texto lightdm.conf

echo '[daemon]
AutomaticLoginEnable=True
AutomaticLogin=seu_usuario' | sudo tee /etc/gdm3/custom.conf

# configurar nome pdv

sudo nano /etc/gdm3/custom.conf

# Reiniciar

echo "EM 10 SEGUNDOS O PDV LINUX VAI REINICIAR PARA APLICAR TODA INSTALAÇÃO!!!"

sleep 10

sudo systemctl reboot
