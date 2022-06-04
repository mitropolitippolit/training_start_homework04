
# Training start

## Homework 4

### Requirements

* Flask
* Jinja2
* Werkzeug
* distribute
* wsgiref

### Instructions

- Упаковать приложение на Python в Docker контейнер.
- Приложение протестировано в ОС ubuntu 18.04
- Установить в контейнер Python (python-all, python-pip)

        RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip

- Установить зависимости из файла requirements.txt (pip install -qr requirements.txt)
- Приложение должно работать на порту 5000
- Точкой входа для интерпритатора Python должен служить файл "app.py"

### Tiny log

    $ sudo apt update && apt install -y docker.io
    $ nano ./requirements.txt
    $ nano ./app.py
    $ nano ./Dockerfile
    $ sudo docker build -t pyapp .
    $ sudo docker run -p5000:5000 -d pyapp
    $ sudo docker login
    $ sudo docker image tag pyapp mitropolitippolit/homework04
    $ sudo docker push mitropolitippolit/homework04

