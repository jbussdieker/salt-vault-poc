consul:
  archive.extracted:
    - name: /usr/local/bin
    - source: https://releases.hashicorp.com/consul/0.6.3/consul_0.6.3_linux_amd64.zip
    - source_hash: md5=a336895f0b2d9c4679524f0c9896e1ec
    - archive_format: zip
    - if_missing: /usr/local/bin/consul
consul-config-dir:
  file.directory:
    - name: /etc/consul
consul-config:
  file.managed:
    - name: /etc/consul/config.json
    - source: salt://consul/files/config.json
consul-init:
  file.managed:
    - name: /etc/init.d/consul
    - source: salt://consul/files/consul.init
    - template: jinja
    - mode: 0755
