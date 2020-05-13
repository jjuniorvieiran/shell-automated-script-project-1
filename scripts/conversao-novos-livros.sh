#!/bin/bash

converte_imagem(){ # first declare it, after use it
    local caminho_imagem=$1  # first function parameter 
    local imagem_sem_extensao=$(ls $caminho_imagem | awk -F. '{ print $1 }')
    convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
}

varrer_diretorio(){
    cd $1 # first function parameter 
    for arquivo in *
    do
        local caminho_arquivo=$(find /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-novos-livros -name $arquivo) 
        if [ -d $caminho_arquivo ]
        then
            varrer_diretorio $caminho_arquivo # call a function and pass one parameter
        else
            converte_imagem $caminho_arquivo
        fi
    done
}

varrer_diretorio /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-novos-livros
if [ $? -eq 0 ] # get exit status
then
    echo "Conversão realizada com sucesso"
else
    echo "Houve um problema na conversão"
fi