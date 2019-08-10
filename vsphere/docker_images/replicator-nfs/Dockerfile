FROM centos
ENV BBR_VERSION 1.2.8
COPY replicator-linux /usr/local/bin
RUN yum install -y wget && yum install -y nfs-utils ; mkdir /tmp/nfs ; mv /usr/local/bin/replicator-linux /usr/local/bin/replicator && chmod +x /usr/local/bin/replicator
RUN wget -q https://github.com/cloudfoundry-incubator/bosh-backup-and-restore/releases/download/v${BBR_VERSION}/bbr-${BBR_VERSION}.tar --no-check-certificate && \
 tar xf bbr-${BBR_VERSION}.tar && mv releases/bbr /usr/local/bin && chmod 755 /usr/local/bin/bbr 
