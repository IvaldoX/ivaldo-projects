#!/bin/bash
# Script simples para monitorar o uso do disco

THRESHOLD=80
USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "ALERTA: Uso de disco acima de ${THRESHOLD}% (atual: ${USAGE}%)"
else
    echo "OK: Uso de disco em ${USAGE}%"
fi
