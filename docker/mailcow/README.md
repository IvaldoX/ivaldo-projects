# Mailcow

Esta pasta contém o Docker Compose para instalar e rodar o **Mailcow**, um servidor de e-mail completo em container.  

## Serviços incluídos
- Postfix (SMTP)
- Dovecot (IMAP/POP3)
- Nginx (Webmail)
- MariaDB (Banco de dados)
- Redis
- Rspamd (antispam)
- Let's Encrypt (certificados SSL)

## Configuração básica

- Subdomínio: `mail.seudominio.com` (substitua pelo seu domínio real)
- Fuso horário: `America/Sao_Paulo` (pode alterar na variável `MAILCOW_TIMEZONE`)

## Portas expostas
- **25** → SMTP
- **80** → HTTP (Painel Web)
- **443** → HTTPS (Painel Web)
- **587** → SMTP Submission
- **993** → IMAP SSL
- **995** → POP3 SSL

## Volumes persistentes
- `mailcow-data` → armazenamento dos e-mails
- `mailcow-config` → arquivos de configuração do Mailcow

## Como subir o container
```bash
docker-compose up -d
