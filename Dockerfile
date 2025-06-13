# Usa Python 3.10 (ou outro compatível com suas libs)
FROM python:3.10-slim

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos do seu projeto para o container
COPY . /app

# Atualiza pip e instala dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expõe a porta usada pelo Flask
EXPOSE 5000

# Comando para rodar o app
CMD ["python", "app.py"]
