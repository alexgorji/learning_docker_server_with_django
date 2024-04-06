FROM docker

WORKDIR /var/usr/scripts/

RUN mkdir -p /var/usr/backup/

COPY . .

RUN chmod +x clean_backup.sh
RUN chmod +x make_backup.sh

CMD ["tail", "-f", "/dev/null"]