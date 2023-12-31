FROM python:latest

WORKDIR /python-docker

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "flask run" ]