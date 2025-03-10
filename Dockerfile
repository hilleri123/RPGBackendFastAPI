# backend-fastapi/Dockerfile
FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 4050

CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "4050", "--reload"]