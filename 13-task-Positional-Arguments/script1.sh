#!/bin/bash


echo "the last command $!"
var=1
command_string="echo \$var"
result=$(eval "$command_string")
echo "Resultado del comando: $result"
