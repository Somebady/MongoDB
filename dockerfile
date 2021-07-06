FROM ubuntu:latest

LABEL application="Spam Classifier"
LABEL version="0.0.1"
LABEL author="Akshay Soni"
LABEL author_email="akshaysoni460@gmail.com"

RUN apt-get update -y && \
    apt-get install -y python3-pip python-dev

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
