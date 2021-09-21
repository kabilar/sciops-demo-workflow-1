FROM kabilar/datajoint-workflow-array-ephys:demo_v2

WORKDIR ./workflow

RUN git clone https://github.com/ttngu207/sciops-demo-workflow-1.git .

RUN pip install .
