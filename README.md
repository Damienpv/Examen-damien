# Examen-damien

ReadMe de l'examen

 -Génération de la clé groq
 https://github.com/user-attachments/assets/5f3a9a79-3ba4-49c9-88c4-59424227cbe2


1- création d'un fichier .env et on integre la GROQ_API_KEY + rajout dans le .gitignore pour éviter de la push sur github
2 - Editer le code .py pour lui indiquer de prendre en compte la variable env et rajouter le import os qui manque

Ensuite l'app démarre
https://github.com/user-attachments/assets/4d291984-95cd-44d8-8d8f-d3ec6c728cf1

Part 2 :
Création du dockerfile ( voici le docker) 

FROM tiangolo/uvicorn-gunicorn:python3.11

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8001

CMD ["uvicorn", "app.mini-groq:app", "--host", "0.0.0.0", "--port", "8001"]

On teste de build
docker build -t groq-api .
docker run -p 8001:8001 groq-api

https://github.com/user-attachments/assets/d00d3bbe-2bc9-44df-9231-5b6865391c70





