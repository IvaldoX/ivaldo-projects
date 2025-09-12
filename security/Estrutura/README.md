# Security

Esta pasta contém scripts simples de auditoria, firewall, VPN e segurança em **Bash**.

## Scripts incluídos

### Auditoria
- **check-ports.sh** → Lista portas abertas e processos associados.
- **check-users.sh** → Lista usuários locais e exibe quem está logado.
- **check-failed-logins.sh** → Mostra tentativas de login falhas (brute-force).

### Segurança e Redes
- **firewall-setup.sh** → Configura firewall básico usando UFW.
- **vpn-status.sh** → Verifica se VPN (OpenVPN/WireGuard) está ativa.
- **fail2ban-status.sh** → Mostra status do Fail2Ban e jails configuradas.

## Como usar
Dar permissão de execução:
```bash
chmod +x *.sh



Executar script desejado:

./firewall-setup.sh
./vpn-status.sh
./fail2ban-status.sh
