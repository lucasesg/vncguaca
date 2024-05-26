#!/bin/bash

echo "
#########################################
#
#
#	SCRIPT DE INSTALAÇÃO VNC BY
#
#	 ALLGENIUS
#
#
#########################################
"

sleep 7

# Atualizar o sistema

su apt update

# Instalar x11vnc

su apt install x11vnc

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

sleep 2

su systemctl daemon-reload
su systemctl restart x11vnc.service
su systemctl stop x11vnc.service
su systemctl enable x11vnc.service
su systemctl start x11vnc.service

sleep 2

# Reiniciar

echo "⚠ EM 10 SEGUNDOS O PDV LINUX VAI REINICIAR PARA APLICAR TODA INSTALAÇÃO ⚠"

sleep 10

su systemctl reboot