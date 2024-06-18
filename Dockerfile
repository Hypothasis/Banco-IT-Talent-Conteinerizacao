# Usa a imagem oficial do MySQL do Docker Hub
FROM mysql:latest

# Variaveis de Ambiente
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=BANCO_DADOS_IT_TALENT
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=user

# Porta
EXPOSE 3306

# Copia o script para dentro da Imagem
COPY scripts_sql/dump.sql /docker-entrypoint-initdb.d/
