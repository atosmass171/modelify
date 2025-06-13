# Escolha a versão de Python compatível (exemplo: 3.11)
FROM python:3.11-slim

# Diretório de trabalho
WORKDIR /app

# Copie os arquivos
COPY . .

# Instale dependências
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expõe a porta (ajuste se usar outra)
EXPOSE 10000

# Comando para iniciar (ajuste se necessário)
CMD ["gunicorn", "main:app", "--bind", "0.0.0.0:10000"]
