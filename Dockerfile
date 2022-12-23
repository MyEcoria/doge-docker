FROM debian:latest

# install deps
RUN apt update && apt upgrade -y && apt install -y curl gpg ca-certificates tar dirmngr

ADD init.sh /

EXPOSE 22556
ENTRYPOINT ["/bin/bash"]
CMD ["/init.sh"]
LABEL name="dogecoin-node" version="1.14.6" description="Dogecoin fullnode container based off Debian"
