# remote-command

Concourse custom resourse which executes arbitary commands over ssh and converts the output lines into versions


This is the source for captainstuart/remote-command

###Parameters

```command``` the remote cmmand to run

```host``` Remote host or IP address

```user``` Login user account

```key``` ssh private key needed to access host 

```debug``` The key is writen to a file and then deleted after the command is executed. This is an issue if you need to intercept the container and see debug. Set debug: true to prevent the keyfile from being deleted 

###Example usage

