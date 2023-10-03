From python:3.9-slim
WORKDIR /app
COPY requirements.txt requirements.txt
Run apt-get update && apt-get install -y gcc
Run pip3 install -r requirements.txt
COPY . .
ENV FLASK_APP=hello.py
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]