# Aplicações de teste em containers

Esta pasta contém exemplos de aplicações simples para estudo de Docker:

- **hello-world**: Container básico que imprime uma mensagem.
- **php-app**: Aplicação PHP simples rodando em Apache.
- **python-app**: Aplicação Python com Flask.


## Como usar
1. Entre na pasta da aplicação:
```bash
cd docker/test-apps/php-app

Build do container:
docker build -t php-test-app .

Rodar o container:
docker run -d -p 8080:80 php-test-app

Acesse pelo navegador em http://localhost:8080
