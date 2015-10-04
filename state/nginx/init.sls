# -*- mode: yaml -*-
# Salt State for setting up Nginx
nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
        - file: /etc/nginx/nginx.conf
        - file: /etc/nginx/htpasswd
        - file: /etc/nginx/sites-available/
        - file: /etc/nginx/sites-enabled

/etc/nginx/nginx.conf:
  file.managed:
    - source: salt://nginx/nginx.conf
    - makedirs: true

/etc/nginx/htpasswd:
  file.managed:
    - source: salt://nginx/htpasswd
    - makedirs: true

/usr/share/nginx/www:
  file.recurse:
    - source: salt://nginx/www
    - include_pat: "*"
    - clean: true
    - template: jinja
    - required:
        - pkg: nginx

# Copy all files ending in ".conf" to sites-available
/etc/nginx/sites-available/:
  file.recurse:
    - source: salt://nginx/sites-available
    - include_pat: "*.conf"
    - clean: true
    - template: jinja
    - required:
        - pkg: nginx

# Enable every site in sites-available. We only upload files to
# sites-available if they end in ".conf", so if you want to disable a
# site, change its file extension.
/etc/nginx/sites-enabled:
  file.symlink:
    - target: /etc/nginx/sites-available
    - force: true