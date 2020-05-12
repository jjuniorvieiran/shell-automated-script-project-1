#!/bin/bash

cd /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-novos-livros
for arquivo in *
do
    if [ -d $arquivo ]  # is arquivo a directory
    then
        cd $arquivo     # entry in directory
        for conteudo_arquivo in *
        do
            if [ -d $conteudo_arquivo ]
            then
                #Entrar no diretorio e fazer a varredura
            else
                #Conversao jpg para png
            fi
        done
    else
        #Conversao jpg para png
    fi
done