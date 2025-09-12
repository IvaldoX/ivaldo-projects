#!/bin/bash
# Script simples para verificar se VPN está ativa

if pgrep openvpn > /dev/null; then
    echo "VPN (OpenVPN) está rodando ✅"
elif pgrep wg-quick > /dev/null; then
    echo "VPN (WireGuard) está rodando ✅"
else
    echo "Nenhuma VPN ativa ❌"
fi


