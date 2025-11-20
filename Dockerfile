FROM python:3.11-slim

# Install dependencies for pygame
RUN apt-get update && apt-get install -y python3-pygame && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["python", "snake.py"]
