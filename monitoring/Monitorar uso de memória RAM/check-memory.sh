#!/bin/bash
# Script para monitorar uso de memória RAM

THRESHOLD=80

# Pega percentual de memória usada (Linux)
USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100.0}')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
    echo "ALERTA: Memória acima de ${THRESHOLD}% (atual: ${USAGE}%)"
else
    echo "OK: Memória em ${USAGE}%"
fi
