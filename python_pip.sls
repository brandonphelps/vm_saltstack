

python-pip:
  pkg.installed

virtualenv:
  pip.installed:
    - require:
      - pkg: python-pip

celery:
  pip.installed:
    - require:
      - pkg: python-pip