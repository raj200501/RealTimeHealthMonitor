FROM python:3.9-slim

WORKDIR /app

COPY backend/api/requirements.txt ./
RUN pip install -r requirements.txt

COPY backend/api/ ./

CMD ["python", "app.py"]
