# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM liferay/dxp:latest
USER root
WORKDIR /opt/liferay
# Install system dependencies
COPY . ./

RUN apt-get update -y && apt-get install -y \
    nfs-common \
    nfs-kernel-server \
    && apt-get clean \
    && chmod +x run.sh

CMD ["run.sh"]
