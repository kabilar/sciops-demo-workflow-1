FROM jupyter/minimal-notebook:hub-1.4.1

# jupyter related installation (can be removed once we use datajoint's images)
USER root
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install python3-pip -y
RUN apt install git-all -y
# end

WORKDIR /main/workflow

RUN git clone https://github.com/ttngu207/sciops-demo-workflow-1.git .

RUN pip install .