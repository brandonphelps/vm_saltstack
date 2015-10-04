
mysql_python_pkgs:
  pkg.installed:
    - pkgs:
      - libmysqlclient-dev
      - mysql-client
      - python-mysqldb
    - require:
      - pkg: server_pkgs

arena_db:
  mysql_database.present

arena_user:
  mysql_user.present:
    - host: localhost
    - password: ilikecherries
