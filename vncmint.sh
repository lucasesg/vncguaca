#!/bin/bash

echo "##################################"
echo "#### SCRIPT DE INSTALAÇÃO VNC ####"
echo "##################################"
sleep 4

# Atualizar o sistema
sudo apt-get update -y

# Instalar x11vnc
sudo apt-get install x11vnc -y

# Criar o arquivo de serviço para x11vnc
echo "[Unit]
Description=x11vnc service
After=display-manager.service network.target syslog.target

[Service]
Type=simple
ExecStart=/usr/bin/x11vnc -forever -display :0 -auth guess -passwd abc,123
ExecStop=/usr/bin/killall x11vnc
Restart=on-failure

[Install]
WantedBy=multi-user.target" | sudo tee /lib/systemd/system/x11vnc.service

sudo systemctl daemon-reload
sudo systemctl enable x11vnc.service
sudo systemctl start x11vnc.service

# Finalizar e reiniciar
echo "EM 10 SEGUNDOS O PDV LINUX VAI REINICIAR PARA APLICAR TODA INSTALAÇÃO!! "
sleep 10
sudo systemctl reboot
