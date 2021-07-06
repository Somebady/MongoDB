FROM ubuntu:latest

LABEL application="Spam Classifier"
LABEL version="0.0.1"
LABEL author="Akshay Soni"
LABEL author_email="akshaysoni460@gmail.com"

# RUN sudo apt install python3-pip
RUN sudo apt update & udo apt dist-upgrade
RUN sudo apt install unattended-upgrades 

COPY . .

RUN pip install -r requirements.txt

CMD [ "app.py","run" ]