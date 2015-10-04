
server_pkgs:
  pkg:
    - installed
    - pkgs:
      - python-dev 
    - refresh: True

mysql_python_pkgs:
  pkg.installed:
    - pkgs:
      - libmysqlclient-dev
      - mysql-client
      - python-mysqldb
    - require:
      - pkg: server_pkgs

mysql:
  pip.installed:
    - require:
      - pkg: python-pip
      - pkg: mysql_python_pkgs

arena_db:
  mysql_database.present
