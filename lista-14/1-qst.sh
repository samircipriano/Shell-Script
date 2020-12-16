#!/bin/bash

date '+%d/%m/%Y'

echo "Nao pare ate se orgulhar!"

chmod 777 1-qst.sh

cp 1-qst.sh /etc/init.d

chmod 777 /etc/init.d/1-qst.sh

update-rc.d 1-qst.sh defaults
