{% from "vault/map.jinja" import vault with context %}

vault:
  archive.extracted:
    - name: /usr/local/bin
    - source: https://releases.hashicorp.com/vault/0.4.1/vault_0.4.1_linux_amd64.zip
    - source_hash: md5=d1a4dcd21c7320ce3b0d4f66e4e39d9c
    - archive_format: zip
    - if_missing: /usr/local/bin/vault
vault-config-dir:
  file.directory:
    - name: /etc/vault
vault-config:
  file.managed:
    - name: /etc/vault/config.json
    - source: salt://vault/files/config.json
vault-init:
  file.managed:
    - name: /etc/init.d/vault
    - source: salt://vault/files/vault.init
    - template: jinja
    - mode: 0755
