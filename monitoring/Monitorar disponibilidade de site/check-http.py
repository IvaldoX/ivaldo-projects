#!/usr/bin/env python3
import requests

URL = "https://google.com"

try:
    r = requests.get(URL, timeout=5)
    if r.status_code == 200:
        print(f"OK: {URL} está online ✅")
    else:
        print(f"ALERTA: {URL} retornou status {r.status_code} ⚠️")
except requests.exceptions.RequestException as e:
    print(f"ERRO: Não foi possível acessar {URL} ❌ - {e}")
