#!/bin/bash
cam=$pwd
echo "Diretorios\n"

if [ -d ${cam} ];then
	ls ${cam}
fi

if [ -f ${cam} ];then
	ls ${cam}
fi

if [ -L ${cam} ];then
	ls ${cam}
fi
