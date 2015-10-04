

arena_db:
  mysql_database.present

arena_user:
  mysql_user.present:
    - host: localhost
    - password: ilikecherries
