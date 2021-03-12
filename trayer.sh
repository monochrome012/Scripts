#!/bin/bash
killall trayer
if [ $? != 0 ];then
	trayer --edge top --transparent true --height 25 --tint 10
fi
