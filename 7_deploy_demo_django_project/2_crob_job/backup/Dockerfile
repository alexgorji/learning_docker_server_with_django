FROM docker

WORKDIR /var/usr/scripts/

RUN mkdir -p /var/usr/backup/

COPY . .

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/var/usr/scripts/entrypoint.sh"]