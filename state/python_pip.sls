

python-pip:
  pkg.installed


libncurses5-dev:
  pkg.installed

libreadline5-dev:
  pkg.installed

virtualenv:
  pip.installed:
    - require:
      - pkg: python-pip

celery:
  pip.installed:
    - require:
      - pkg: python-pip

readline:
  pip.installed:
    - require:
      - pkg: python-pip