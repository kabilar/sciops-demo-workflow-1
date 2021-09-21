FROM datajoint/djbase:py3.8-debian

RUN mkdir /main/workflow

WORKDIR /main/workflow

RUN git clone https://github.com/ttngu207/sciops-demo-workflow-1.git .

RUN pip install .