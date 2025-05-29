FROM python:3.11-slim

# Instalar dependências do sistema
RUN apt-get update && \
    apt-get install -y ghostscript libglib2.0-dev libsm6 libxrender1 libxext6 poppler-utils && \
    pip install --no-cache-dir camelot-py[cv] flask pandas openpyxl PyPDF2

# Copia os arquivos da aplicação
WORKDIR /app
COPY . /app

# Define o comando de inicialização
CMD ["python", "app.py"]
