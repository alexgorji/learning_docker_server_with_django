BE AWARE OF SECURITY RISKS! 

We are using in this example a Docker in Docker principle for making backups. This gives the backup container privileged root access on the host and respectively the hardware attached. This could be used in a malicious attack to gain control over the host entirely (for example with adding a public ssh-key to the authorized keys).
For furthor informations see: [https://www.trendmicro.com/en_dk/research/19/l/why-running-a-privileged-container-in-docker-is-a-bad-idea.html](https://www.trendmicro.com/en_dk/research/19/l/why-running-a-privileged-container-in-docker-is-a-bad-idea.html) and other similar sources.
