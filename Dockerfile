FROM tiangolo/uvicorn-gunicorn:python3.11

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8001

CMD ["uvicorn", "app.mini-groq:app", "--host", "0.0.0.0", "--port", "8001"]
