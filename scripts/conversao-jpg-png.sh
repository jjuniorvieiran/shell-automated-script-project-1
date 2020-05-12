#!/bin/bash

converte_imagem(){
    cd /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-livros
    if [ ! -d png ] # if not existes png directory 
    then
        mkdir png
    fi

    for imagem in *.jpg
    do  #local to make this var a local var
        local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }') # using $( .. ) the result of ls should be stored in imagem_sem_ext...
        convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
    done
}

converte_imagem 2>erros_conversao.txt # if a return was 2 means have some message. redirect this message to a file
if [ $? -eq 0 ] # $? means value of previous function
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve uma falha no processo"
fi