FROM arm32v7/python:3

RUN pip install Flask==2.2.2

COPY hello.py /

ENV FLASK_APP=hello
EXPOSE 8000

CMD flask run --host 0.0.0.0 --port 8000