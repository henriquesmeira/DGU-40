# Usando uma imagem base Python
FROM python:3.10-slim

# Instalando dependências do sistema
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Definindo o diretório de trabalho no container
WORKDIR /app

# Copiando os arquivos necessários para dentro do container
COPY . /app

# Instalando as dependências necessárias, incluindo o dbt
RUN pip install --no-cache-dir pandas sqlalchemy psycopg2-binary dbt-postgres

# Definindo a variável de ambiente para não interagir com o prompt
ENV PYTHONUNBUFFERED=1

# Comando para rodar o script Python ou o dbt
CMD ["python", "import.py"]