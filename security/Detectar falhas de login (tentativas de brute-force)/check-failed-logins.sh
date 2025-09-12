#!/bin/bash
# Mostra falhas de login recentes do auth.log

LOG_FILE="/var/log/auth.log"

if [ ! -f "$LOG_FILE" ]; then
    echo "Arquivo $LOG_FILE não encontrado (pode variar conforme a distro, ex: /var/log/secure)"
    exit 1
fi

echo "=== Falhas de login detectadas ==="
grep "Failed password" $LOG_FILE | tail -n 20
