FROM python:3.6

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.16.157"

# Install awscli
RUN pip install awscli==${awscli_version}

# Install sam
RUN pip install --user --upgrade aws-sam-cli
RUN mkdir /data
RUN chmod -x /data

ENV PATH $PATH:/root/.local/bin

