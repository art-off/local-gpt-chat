FROM ubuntu:latest

RUN apt-get update \
    && apt-get install -y git \
    && apt-get install -y python3 \
    && apt-get install -y python3-pip

RUN git clone https://github.com/dKosarevsky/AI-Talks.git

WORKDIR /AI-Talks/

RUN pip install -r requirements.txt
COPY secrets.toml .streamlit/secrets.toml

CMD ["bash", "run.sh"]