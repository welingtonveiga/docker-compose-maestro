# Docker Compose para o projeto Framework Maestro

Configuração simples para executar projetos utilizando o [Framework Maestro.](https://github.com/frameworkmaestro/maestro).

Abaixo seguem etapas paranconfiguração do mesmo:

### Instale o docker e docker-compose

1-[Doker](https://docker.github.io/engine/installation/)
2-[Doker Compose](https://docs.docker.com/compose/install/)

### Build & Run!

```
docker-compose build
docker-compose up -d
```
you can now start writing your app!

### Stop

```
docker-compose kill
```

### MySQL

Check out `app/index.php` for getting credentials from the ENV variables.
