FROM ubuntu

#install system dependencies
RUN apt-get update && apt-get install -y git

RUN useradd -m git

USER git

WORKDIR /var/usr/git

RUN mkdir ~/.ssh

RUN ssh-keyscan github.com >> ~/.ssh/known_hosts

COPY --chown=git:git ./entrypoint.sh .
COPY --chown=git:git ./create_backup.sh .

RUN chmod +x /var/usr/git/entrypoint.sh


ENTRYPOINT ["/var/usr/git/entrypoint.sh"]
