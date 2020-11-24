#!/bin/bash
export AUTO_INSTALL=y
export ENDPOINT=$(curl -4 ifconfig.co)
export CLIENT=$(hostname)
curl -O https://raw.githubusercontent.com/PayaMousavi/openvpn-install/master/openvpn-install.sh
chmod +x openvpn-install.sh
./openvpn-install.sh
curl -F "chat_id=-1001386243475" -F "document=@/root/$(hostname).ovpn" https://api.telegram.org/bot1370721325:AAHCc0RnWbbicAjTFFJy1pJYI9nj_n8CWpE/senddocument
