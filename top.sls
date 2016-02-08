base:
  '*':
    - salt-minion
  'vault':
    - consul
    - vault
  'salt':
    - salt-master
    - salt-api
    - salt-dashboard
