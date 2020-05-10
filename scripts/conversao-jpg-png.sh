#!/bin/bash

cd /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-livros
if [ ! -d png ] # if not existes png directory 
then
    mkdir png
fi

for imagem in *.jpg
do
    imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }') # using $( .. ) the result of ls should be stored in imagem_sem_ext...
    convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done