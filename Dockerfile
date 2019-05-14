FROM python:3.6

ARG pip_installer="https://bootstrap.pypa.io/get-pip.py"
ARG awscli_version="1.16.157"

# Install awscli
# Install jq
RUN pip install awscli==${awscli_version} \
    && pip install --user --upgrade aws-sam-cli \
    && mkdir /data \
    && chmod -x /data \
    && apt -y update \
    && apt -y install jq

ENV PATH $PATH:/root/.local/bin

