<p align="center"><img width="280" src="https://allgenius.com.br/wp-content/uploads/2018/07/logotopositel.png"></p>

<br>

## SCRIPT DE INSTALAÇÃO FÁCIL X11VNC

Olá, segue script de instalação do vnc destinado a acesso guacamole apache.

## SCRIPT DA INSTALAÇÃO

Segue abaixo o comando que executara no terminal e fique atento a sua distribuição linux. Cada script tem um final diferente para distribuição. Segue o padrão abaixo:

vncubuntu0 - Versões antiga <br>
vncubuntu1 - Novas versões <br>
vncmint - Versão ubuntu <br>
<br>
```bash
wget https://raw.githubusercontent.com/lucasesg/vncguacamole/main/vnc.sh && sudo chmod +x vnc.sh && sudo ./vnc.sh
```
```bash
wget https://raw.githubusercontent.com/lucasesg/vncguacamole/main/vnc.sh && sudo chmod +x vnc.sh && sudo ./vnc.sh
```
# O QUE O SCRIPT REALIZA ?

Segue abaixo o que está no codigo para execução da instalação.

- Logo instalação
- Update
- Instalação lightdm
- Instalação x11vnc
- Criar o arquivo de serviço para x11vnc
- Reiniciar e ativar serviços Daemon e x11vnc
- Criar o arquivo de serviço para light
- Alterar o nomePDV manualmente
- Mensagem final informando que houve sucesso na instalação
- Reiniciar linux

## 🛠 Distruibuição Linux suportada

<br>
✔️ Ubuntu
❌ Lubuntu
❌ Debian
❌ Mint
