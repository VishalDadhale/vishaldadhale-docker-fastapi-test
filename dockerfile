from python:3.8

workdir /app
COPY requirements.txt .

copy ./app

RUN pip install --no cache-dir -r requirements.txt

Expose 8000

CMD ["uvicorn","app.main:app","--host","0.0.0.0","--port","8000"]