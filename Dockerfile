FROM ubuntu:18.04
WORKDIR /pyapp
ADD requirements.txt .
ADD app.py .
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip
RUN pip install -qr ./requirements.txt
ENTRYPOINT ["python", "./app.py"]
EXPOSE 5000
