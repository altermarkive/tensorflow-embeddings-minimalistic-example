#!/bin/sh

SELF=$(realpath $0 2> /dev/null || python -c "import os; print(os.path.realpath('$1'))")
BASE=$(dirname $SELF)
sudo rm -rf $BASE/logs
docker build -t embedder .
docker run -it -v $BASE/logs:/tmp/logs embedder
docker run -it -v $BASE/logs:/tmp/logs -p 6006:6006 tensorflow/tensorflow tensorboard --logdir /tmp/logs --bind_all
