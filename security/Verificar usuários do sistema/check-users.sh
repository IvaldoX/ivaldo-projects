#!/bin/bash
# Lista todos os usuários locais e mostra quem está logado

echo "=== Usuários locais ==="
cut -d: -f1 /etc/passwd

echo ""
echo "=== Usuários logados atualmente ==="
who
