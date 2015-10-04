# -*- mode: yaml -*-

# Top salt state
base:
  'first':
    - python_pip
    - emacs
    - rabbit
    - postgres
  'second':
    - python_pip
    - cpp
    - mono
    - java
    