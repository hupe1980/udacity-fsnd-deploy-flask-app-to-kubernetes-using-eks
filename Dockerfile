FROM python:stretch

WORKDIR /usr/src/app

RUN pip install --upgrade pip

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]