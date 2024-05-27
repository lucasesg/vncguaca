## SCRIPT DE INSTALAÇÃO FÁCIL PROTOCOLO VNC LINUX

Olá, segue script de instalação do vnc (x11vnc) destinado a acesso Guacamole Apache. Sobre o VNC (Virtual Network Computing) é um protocolo gráfico de rede muito útil (aplicativos executados em um computador, mas exibindo suas janelas em outro)

## SCRIPT DA INSTALAÇÃO

Segue abaixo os comandos que precisa digitar no terminal linux. Fique atento ao wget e a sua distribuição linux. Cada script tem um final diferente. Segue o padrão abaixo:

<br/>

Ubuntu/Lubuntu - vncubuntu0.sh - Versões antiga
```bash
wget https://raw.github.com/lucasesg/vncguaca/main/vncubuntu0.sh && sudo chmod +x vncubuntu0.sh && sudo ./vncubuntu0.sh
```
Ubuntu/Lubuntu - vncubuntu1.sh - Novas versões
```bash
wget https://raw.github.com/lucasesg/vncguaca/main/vncubuntu1.sh && sudo chmod +x vncubuntu1.sh && sudo ./vncubuntu1.sh
```
MINT - vncmint.sh - Versão ubuntu
```bash
wget https://raw.github.com/lucasesg/vncguaca/main/vncmint.sh && sudo chmod +x vncmint.sh && sudo ./vncmint.sh
```
DEBIAN - vncdebian0.sh - Versões antiga (EM FASE DE TESTES)<br/>
DEBIAN - vncdebian1.sh - Versões antiga (EM FASE DE TESTES)<br/>
CENTOS 7 - vnccentos.sh - Nova versão (EM FASE DE TESTES)

# O QUE O SCRIPT REALIZA ?

Segue as informações da estrutura do script.

- Logo instalação
- Update
- Instalação lightdm
- Instalação x11vnc
- Criar o arquivo de serviço para x11vnc
- Reiniciar e ativar serviços Daemon e x11vnc
- Criar o arquivo de serviço para light
- Alterar o nomePDV manualmente (alterar para o nome do usuário do computador)
- Mensagem final informando que houve sucesso na instalação
- Reiniciar linux

## 🛠 Distruibuição Linux suportada

<br/>
:white_check_mark: Ubuntu
:white_check_mark: Lubuntu
:white_check_mark: Mint
:x: Debian
