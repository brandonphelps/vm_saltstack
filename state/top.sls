# -*- mode: yaml -*-

# Top salt state
base:
  'first':
    - python_pip
    - emacs
    - rabbit
    - postgres
    - nginx
  'second':
    - python_pip
    - cpp
    - mono
    - java
    