# -*- mode: yaml -*-

# Top salt state
base:
  '*':
    - webserver
    - rabbit
    - python_pip