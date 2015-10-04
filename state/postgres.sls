
postgresql:
  pkg:
    - installed

###
# 
# Create Users
#
###


arena_user:
  postgres_user:
    - present
    - password: ilikecherries
    - runas: postgres
    - require:
      - pkg: postgresql


###
#
# Create Database
#
###

arena_db:
  postgres_database:
    - present
    - owner: arena_user
    - runas: postgres
    - require:
      - postgres_user: arena_user