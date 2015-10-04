
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

mysql-client-core-5.5:
  pkg.installed

