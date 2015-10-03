# -*- mode: yaml -*-
# RabbitMQ configuration

# Install RabbitMQ
rabbitmq-server:
  pkg:
    - installed

guest:
  rabbitmq_user.absent:
    - require:
      - pkg: rabbitmq-server

celery_user:
  rabbitmq_user.present:
    - password: "{{ pillar['rabbitmq']['passwords']['celery_user']}}"


celery_vhost:
  rabbitmq_vhost.present:
    - user: celery_user
    - conf: .*
    - write: .*
    - read: .*
    - require:
      - pkg: rabbitmq-server
      - rabbitmq_user: celery_user
        