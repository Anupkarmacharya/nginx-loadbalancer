#!/bin/ash 
export address=$(hostname -i)
sed -i "s/address/$address/g" /www/index.html
