

python-pip:
  pkg.installed

libncurses5-dev:
  pkg.installed

python-dev:
  pkg.installed

virtualenv:
  pip.installed:
    - require:
      - pkg: python-pip

celery:
  pip.installed:
    - require:
      - pkg: python-pip

gunicorn:
  pip.installed:
    - require:
      - pkg: python-pip

readline:
  pip.installed:
    - require:
      - pkg: python-pip
      - pkg: python-dev