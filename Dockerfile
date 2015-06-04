FROM python:2.7
WORKDIR /code
RUN pip install flask
ADD . /code

EXPOSE 80

CMD python app.py