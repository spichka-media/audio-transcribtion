FROM python:3.11.5
RUN mkdir app  \
    && cd app \

RUN python3 -m venv whisp_venv
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install ffmpeg

ENV PATH="/whisp_venv/bin:$PATH"
RUN pip3 install ffmpeg-python
RUN pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu114
RUN pip3 install git+https://github.com/openai/whisper.git
RUN pip3 install pydub
RUN pip3 install PyYAML