# -*- mode: yaml -*-

# Top salt state
base:
  'first':
    - python_pip
    - emacs
    - rabbit
  'second':
    - python_pip
    - cpp
    - mono
    - java
    