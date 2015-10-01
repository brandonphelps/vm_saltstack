# -*- mode: yaml -*-
# RabbitMQ Configuration

# Install RabbitMQ
rabbitmq-server:
  pkg:
    - installed


# Delete the default user (guest)
guest:
  rabbitmq_user.abset:
    - require:
      -pkg: rabbitmq-server

# Create a celery user
celery_user:
  rabbitmq_user.present:
    - password: "{{ pillar['rabbitmq']['passwords']['celery_user'] }}"

# Create a celery virtual host
celery_vhost:
  rabbitmq_vhost.present:
    - user: celery_user
    - conf: .*
    - write: .*
    - read: .*
    - require:
      - pkg: rabbitmq-server
      - rabbitmq_user: celery_user