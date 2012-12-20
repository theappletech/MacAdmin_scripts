#!/bin/sh

SERVICE=Skype
if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
        killall -9 Skype
        rm -rf $3/Applications/Skype.*
        exit 0
fi