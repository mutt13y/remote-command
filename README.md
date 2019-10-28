# remote-command

Concourse custom resourse which executes arbitary commands over ssh and converts the output lines into versions


This is the source for captainstuart/remote-command

### Parameters

```command``` the remote cmmand to run

```host``` Remote host or IP address

```user``` Login user account

```key``` ssh private key needed to access host 

```debug``` The key is writen to a file and then deleted after the command is executed. This is an issue if you need to intercept the container and see debug. Set debug: true to prevent the keyfile from being deleted 

### Example usage

```
resource_types:
- name: remote-command
  type: docker-image
  source:
    repository: captainstuart/remote-command
    tag: '1.0'


resources:
- name: switch_logs
  type: remote-command
  source:
    command: "grep LINEPROTO /rsyslog/cisco/switch.log | grep 'state to up' | grep '10.255.255.20 '"
    host: 192.0.0.2
    user: concourse
    key: ((server_key))

jobs:
- name: Switch
  plan:
  - get: switch_logs
    trigger: true
    
```
