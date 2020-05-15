#!/bin/bash

processos=$(ps -e -o pid -r | head -n 11 | grep '[0-9]')
for pid in $processos
do
    nome_processo=$(ps -p $pid -o comm=)
    echo -n $(date +%F,%H:%M:%S,) >> $nome_processo.log # >> to not replace the file. to add new entries
    # -n is to not break the line
done