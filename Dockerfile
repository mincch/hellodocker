FROM nvidia/cuda:11.6.2-cudnn8-runtime-ubuntu20.04

COPY work.py .

RUN apt-get update && \
    apt-get install -y python3 python3-pip

RUN pip3 install torch==1.12.1+cu116 torchvision==0.13.1+cu116 torchaudio==0.12.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116

CMD ["python3", "work.py"]
