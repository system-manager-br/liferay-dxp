# Use the official lightweight Python image.
# https://hub.docker.com/_/python
FROM liferay/dxp:latest
USER root
WORKDIR /opt/liferay
# Install system dependencies
RUN apt-get update -y && apt-get install -y \
    nfs-common \
    nfs-kernel-server \
    && apt-get clean \
    && mount -t nfs4 -o nolock 10.150.0.3:/mnt/liferay-nfs /opt/liferay/data

CMD ["bash"]
