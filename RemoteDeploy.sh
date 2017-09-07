#!/bin/bash

ssh-keygen

For (Raspberry=1, Raspberry<=250, Raspberry++)
do
SCP ~/.ssh/id_rsa.pub Pi@192.168.1.$Raspberry:/home/pi/.ssh/ #input password once
SSH Pi@192.168.1.$Paspberry 'cat /home/pi/.ssh/id_rsa.pub >> /home/Pi/.ssh/authorized_users; rm /home/pi/.ssh/id_rsa.pub' # input password the second time
done
