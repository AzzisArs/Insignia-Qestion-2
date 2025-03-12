FROM python:3.9-slim

WORKDIR /question_2

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY app.py app.py

EXPOSE 5000

CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]