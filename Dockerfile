FROM python:3.12
WORKDIR /application
COPY . /application

RUN apt update -y && apt install awscli -y

RUN pip install -r requirments.txt
CMD [ "python", "application.py" ]