#!/bin/bash
user=`whoami`

if [[ $user = 'root' ]];
    then 
        echo 'root'
elif [[ $user = 'yong' ]];
    then
        echo 'yong'
else 
    echo 'unknow user'
fi