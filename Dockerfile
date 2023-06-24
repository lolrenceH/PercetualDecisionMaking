FROM walkerlab/pytorch-jupyter:cuda-11.7.1-pytorch-1.13.1-torchvision-0.13.0-torchaudio-0.11.0-ubuntu-20.04

LABEL maintainer="RNN_with_feedback"
RUN apt-get update \
    && apt-get install -y libopenmpi-dev \
    && apt-get install -y tmux 
RUN pip install numpy pandas matplotlib gym scikit-learn