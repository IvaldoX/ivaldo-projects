#!/bin/bash
# Lista portas abertas e processos associados

echo "=== Portas abertas ==="
sudo netstat -tulnp | grep LISTEN
