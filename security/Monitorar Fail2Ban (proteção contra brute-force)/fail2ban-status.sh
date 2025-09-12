#!/bin/bash
# Script para verificar status do Fail2Ban

if systemctl is-active --quiet fail2ban; then
    echo "Fail2Ban está ativo ✅"
    echo ""
    echo "Jails configuradas:"
    sudo fail2ban-client status
else
    echo "Fail2Ban não está rodando ❌"
fi


