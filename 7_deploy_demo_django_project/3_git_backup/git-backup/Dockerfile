FROM ubuntu

#install system dependencies
RUN apt-get update && apt-get install -y git && apt-get install -y sudo

RUN useradd -m git
RUN sudo usermod -aG sudo git

USER git

WORKDIR /var/usr/git

#RUN mkdir /var/usr/git/backup-data

RUN mkdir ~/.ssh

RUN ssh-keyscan github.com >> ~/.ssh/known_hosts

COPY --chown=git ./entrypoint.sh .
COPY --chown=git ./create_backup.sh .
COPY --chown=git ./load_backup.sh .

RUN chmod +x /var/usr/git/entrypoint.sh


ENTRYPOINT ["/var/usr/git/entrypoint.sh"]
