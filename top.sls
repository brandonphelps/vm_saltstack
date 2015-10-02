# -*- mode: yaml -*-

# Top salt state
base:
  '*':
    - rabbit
    - python_pip