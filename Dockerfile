FROM kevincoakley/ubuntu15.10-ansible
MAINTAINER Kevin Coakley <kcoakley@sdsc.edu>

ADD ansible /srv/ansible
WORKDIR /srv/ansible

RUN ansible-playbook -i inventory -c local --skip-tags "service" main.yml

EXPOSE 2181
CMD ["/usr/bin/supervisord"]
