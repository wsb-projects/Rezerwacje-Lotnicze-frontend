FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY templates templates
COPY requirements.txt requirements.txt
COPY app.py app.py

ENV FLASK_APP=app.py
ENV FLASK_ENV=development

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]