#!/bin/bash

rm -rf ${HOME}/tmp*

chmod 777 2-qst.sh

cp 2-qst.sh /etc/init.d

chmod 777 2-qst.sh /etc/init.d/2-qst.sh

update-rc.d 2-qst.sh defaults
