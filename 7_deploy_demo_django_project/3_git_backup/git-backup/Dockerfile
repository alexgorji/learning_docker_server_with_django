FROM ubuntu

#install system dependencies
RUN apt-get update && apt-get install -y git && apt-get install -y sudo


WORKDIR /var/usr/git


RUN mkdir /root/.ssh

RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

COPY . .

RUN chmod +x /var/usr/git/entrypoint.sh

ENTRYPOINT ["/var/usr/git/entrypoint.sh"]
