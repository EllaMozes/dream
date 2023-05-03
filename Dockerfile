FROM python:3.8-alpine
EXPOSE 5000
WORKDIR /var

COPY . app

RUN pip3.8 install flask requests 

CMD [ "python3.8", "app/app.py" ]