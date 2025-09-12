#!/bin/bash
# Script para monitorar uso de CPU

THRESHOLD=75
USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')

USAGE_INT=${USAGE%.*}

if [ "$USAGE_INT" -ge "$THRESHOLD" ]; then
    echo "ALERTA: CPU acima de ${THRESHOLD}% (atual: ${USAGE_INT}%)"
else
    echo "OK: CPU em ${USAGE_INT}%"
fi
