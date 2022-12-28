echo "mounting NFSv4 share"
mount -t nfs4 -o nolock 10.150.0.3:/mnt/liferay-nfs /opt/liferay/data
