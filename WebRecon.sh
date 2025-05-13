#!/bin/bash
for line in $(cat Directories.wordlist)
do
resp=$(curl -s -o /dev/null -w "%{http_code}" $1/$line/)
if [ $resp == "200" ]
then
echo "Diretório encontrado:  $1/$line/"
fi
done
