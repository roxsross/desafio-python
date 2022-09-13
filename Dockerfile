FROM python:3.10.5-alpine
ENV FLASK_ENV=development
WORKDIR /app
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8080
CMD ["python", "-u", "main.py"]