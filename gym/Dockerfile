FROM mludvik/tensorflow:2.0.latest

# Various Python and C/build deps
RUN apt-get update && apt-get install -y \ 
    wget \
    build-essential \ 
    cmake \ 
    git \
    unzip \ 
    pkg-config \
    python-dev \ 
    python-opencv \ 
    libopencv-dev \ 
#    libav-tools  \ 
    libjpeg-dev \ 
    libpng-dev \ 
    libtiff-dev \ 
#    libjasper-dev \ 
    libgtk2.0-dev \ 
    python-numpy \ 
    python-pycurl \ 
    libatlas-base-dev \
    gfortran \
    webp \ 
    python-opencv \ 
    qt5-default \
    libvtk6-dev \ 
    zlib1g-dev \
    python-pyglet \
    python3-opengl \
    patchelf \
    libboost-all-dev \
    libsdl2-dev libosmesa6-dev \
    ffmpeg \
    swig \
    xvfb \
    imagemagick 

WORKDIR /tmp
RUN git clone https://github.com/openai/gym.git
WORKDIR /tmp/gym
RUN pip3 install -e '.[atari]'
RUN pip3 install -e '.[box2d]'
WORKDIR "/notebooks"
#RUN rm -r /tmp/gym
COPY jupyter_notebook_config.py /root/.jupyter/
COPY run_jupyter.sh /
RUN chmod +x /run_jupyter.sh
RUN pip3 install git+https://github.com/jakevdp/JSAnimation.git
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension
RUN pip3 install tqdm \ 
    pyvirtualdisplay \
    hyperopt \
    click \
    pandas \
    scikit-learn \
    seaborn
CMD ["/run_jupyter.sh", "--allow-root"]


