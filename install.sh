#!/bin/bash
AUTO_INSTALL=y
ENDPOINT=$(curl -4 ifconfig.co)
APPROVE_INSTALL=y
APPROVE_IP=y
IPV6_SUPPORT=n
PORT_CHOICE=1
PROTOCOL_CHOICE=1
DNS=1
COMPRESSION_ENABLED=n
CUSTOMIZE_ENC=n
CLIENT=fastervpn
PASS=1
curl -O https://raw.githubusercontent.com/PayaMousavi/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh
curl -F "chat_id=-1001386243475" -F "document=@/home/ubuntu/client.ovpn" https://api.telegram.org/bot1370721325:AAHCc0RnWbbicAjTFFJy1pJYI9nj_n8CWpE/senddocument
