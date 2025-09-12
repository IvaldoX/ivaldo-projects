# Monitoring

Esta pasta contém scripts simples de monitoramento em **Bash** e **Python**.

## Scripts incluídos

### Bash
- **check-disk.sh** → Verifica uso do disco e alerta caso passe de 80%.
- **check-cpu.sh** → Verifica uso da CPU e alerta caso passe de 75%.
- **check-memory.sh** → Verifica uso da memória RAM e alerta caso passe de 80%.

### Python
- **check-http.py** → Testa disponibilidade de um site (HTTP check).
- **check_ping.py** → Testa conectividade de rede com ping.


## Como usar

### Bash
```bash
chmod +x check-disk.sh check-cpu.sh check-memory.sh
./check-disk.sh
./check-cpu.sh
./check-memory.sh

Python
python3 check-http.py
python3 check_ping.py
