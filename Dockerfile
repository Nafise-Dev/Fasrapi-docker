FROM python:3.10

#dossier de travail
WORKDIR /code
EXPOSE 8000
#dépendances
COPY requirements.txt .
COPY main.py .

#Installe les dépendances
RUN pip install -r requirements.txt

CMD [ "uvicorn", "main:app", "--host", "0.0.0.0" ]