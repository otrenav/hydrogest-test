FROM andrewosh/binder-base

MAINTAINER Omar Trejo <otrenav@gmail.com>

USER root

# Add dependency
RUN apt-get update
# RUN apt-get install -y graphviz

USER main

# Install requirements for Python 2
ADD requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN jupyter nbextension enable --py widgetsnbextension

# Install requirements for Python 3
# RUN /home/main/anaconda/envs/python3/bin/pip install -r requirements.txt