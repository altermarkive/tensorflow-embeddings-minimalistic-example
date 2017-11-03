FROM ubuntu:xenial-20171006

RUN apt-get -yq update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -yq install python3 python3-pip

ADD requirements.txt /tmp/requirements.txt
RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r /tmp/requirements.txt && \
    rm /tmp/requirements.txt

ADD *.py /code/

CMD ["/usr/bin/python3", "/code/run.py"]
