

python-pip:
  pkg.installed

virtualenvwrappr:
  pip.installed:
    - require:
      - pkg: python-pip

celery:
  pip.installed:
    - require:
      - pkg: python-pip