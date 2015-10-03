# -*- mode: yaml -*-

# Top salt state
base:
  'first':
    - python_pip
    - emacs
    - rabbit
    - sql
  'second':
    - python_pip
    - cpp
    - mono
    - java
    