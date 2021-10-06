# Workflow for extracellular electrophysiology using Neuropixels probe and Kilosort clustering method

+ Welcome to the SciOps cloud-based platform for Neuropixels analysis
    + This platform is designed for the user to upload their raw Neuropixels 
    data acquired with SpikeGLX and will then be automatically process the data
    with Kilosort 2.5.  Then the user can use Jupyter notebooks to visualize the 
     results.
    + This work is built with open-source packages.  The 
    [sciops-demo-workflow-1](https://github.com/ttngu207/sciops-demo-workflow-1)
    uses components from four DataJoint Elements (listed below), assembled 
    together to form a fully functional workflow.
        + [element-lab](https://github.com/datajoint/element-lab)
        + [element-animal](https://github.com/datajoint/element-animal)
        + [element-session](https://github.com/datajoint/element-session)
        + [element-array-ephys](https://github.com/datajoint/element-array-ephys)
    + Please follow the steps below to begin working with the platform.

+ Create a free account at on [datajoint.io](accounts.datajoint.io)
    + Please email us when you create this account.

+ Enter your experimental session metadata
    + Login to [DataJoint LabBook](https://sciops-demo-v1-labbook.datajoint.io/)
        + Host: `tutorial-db.datajoint.io`
        + Username: <datajoint.io account username>
        + Password: <datajoint.io account password>
    + DataJoint LabBook displays data from your database schemas
        + Left column - schemas
        + Middle column - tables within a schema
        + Right column - entries within a table
    + Enter subject information
        + In the left column, navigate to the `subject` schema
        + In the middle column, navigate to the `Subject` table
        + In the right column, `Insert` a new subject
    + Enter session information
        + In the left column, navigate to the `session` schema
        + In the middle column, navigate to the `Session` table
        + In the right column, `Insert` a new experimental session for the 
        subject
    + Enter session directory information
        + In the left column, navigate to the `session` schema
        + In the middle column, navigate to the `SessionDirectory` table
        + In the right column, `Insert` a new entry to identify where the data 
        is located (relative to the `inbox` directory)

+ Upload raw data
    + Download a sftp client, [Download Filezilla](
        https://filezilla-project.org/download.php?type=client)
    + Install Filezilla
    + Enter your credentials within the four fields at the top left and press
     `Quickconnect`
        + Host: `sciops-demo-v1-sftp.datajoint.io`
        + Username: <datajoint.io account username>
        + Password: <datajoint.io account password>
        + Port: 22
    + The directory structure of your files should be in the following 
    organization, where the `subject`, `session`, and `imec` directories can 
    have any naming convention.
        ```
        inbox/
        └───subject1/
        │   └───session0/
        │   │   └───imec0/
        │   │   │   │   *imec0.ap.meta
        │   │   │   │   *imec0.ap.bin
        │   │   └───imec1/
        │   │       │   *imec1.ap.meta
        │   └───session1/
        │   │   │   ...
        └───subject2/
        │   │   ...
        ```
    + Drag and drop your files from your local machine to the cloud under the 
    directory `/inbox`.

+ Kilosort processing
    + Now the workflow will trigger Kilosort 2.5 to analyze this dataset with 
    default parameters.
    + To determine when your dataset is processed, log in to 
    [DataJoint LabBook](https://sciops-demo-v1-labbook.datajoint.io/)
    + In the left column, navigate to the `ephys` schema
    + In the middle column, navigate to the `WaveformSet` table
    + In the right column, `Insert` a new subject

+ Data exploration and visualization
    + Within this directory please navigate to the Jupyter notebook 
    [01-explore](notebooks/01-explore.ipynb) to interact with the processed 
    data.

