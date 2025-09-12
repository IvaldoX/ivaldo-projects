#!/usr/bin/env python3
import subprocess
import platform

HOST = "8.8.8.8"  # Alvo do teste (Google DNS)

# Definir comando conforme o SO
param = "-n" if platform.system().lower() == "windows" else "-c"
command = ["ping", param, "1", HOST]

try:
    output = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)
    if output.returncode == 0:
        print(f"OK: Host {HOST} está respondendo ao ping ✅")
    else:
        print(f"ALERTA: Host {HOST} não respondeu ao ping ❌")
except Exception as e:
    print(f"ERRO: Não foi possível executar o ping - {e}")
