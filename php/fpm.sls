{%- from "php/map.jinja" import php with context %}

include:
  - php.deprecated

php-fpm:
  pkg.installed:
    - name: {{ php.fpm_pkg }}
  service.running:
    - name: {{ php.fpm_service }}
    - enable: True
