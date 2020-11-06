FROM ubuntu
RUN apt-get update 
RUN apt-get -y install python3 python-pip3 vim 
RUN pip install flask 
COPY app.py /opt
ENTRYPOINT   FLASK_APP=/opt/app.py flask run --host=0.0.0.0
