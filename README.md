Simulate a host server with multiple domains locally

Create very isolated projects with docker with no shared services or containers.

1. simple-html-1 ==> localhost:8001
2. simple-html-2 ==> localhost:8002
3. simple-django-project ==> localhost:8003
4. simple-django-project-with-statics ==> localhost:8004
5. simple-django-project-with-db ==> localhost:8005
   1. Use environmental variables to change parameters in settings: DEBUG, SECRET_KEY, DJANGO_ALLOWED_HOSTS, CSRF_TRUSTED_ORIGINS
6. simple-django-project-with-postgres ==> localhost:8006
   1. Use environmental variables to change postgres parameters in settings
7. simple-django-project-with-postgres-and-media = demo-django-project ==> localhost:8007
   1. Make backup of database and media
   2. Set up a cron job for creating backups
   3. GitHub:
      1. Push backup to GitHub
      2. Pull backup from GitHub and load
      3. Add  demo-django-project as registry image