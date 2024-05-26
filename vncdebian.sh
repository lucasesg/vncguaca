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

sleep 5

# Atualizar o sistema

apt update

# Instalar x11vnc

apt install x11vnc

sleep 2

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
WantedBy=multi-user.target" | tee /lib/systemd/system/x11vnc.service

systemctl daemon-reload
systemctl enable x11vnc.service
systemctl start x11vnc.service

sleep 2

# Reiniciar

echo "⚠ EM 10 SEGUNDOS O PDV LINUX VAI REINICIAR PARA APLICAR TODA INSTALAÇÃO ⚠"

sleep 10

systemctl reboot
