#!/bin/bash
# Script para configurar firewall básico com UFW

echo "Ativando UFW..."
sudo ufw enable

echo "Permitindo SSH (porta 22)..."
sudo ufw allow 22/tcp

echo "Permitindo HTTP (porta 80) e HTTPS (porta 443)..."
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp

echo "Status atual do UFW:"
sudo ufw status verbose

