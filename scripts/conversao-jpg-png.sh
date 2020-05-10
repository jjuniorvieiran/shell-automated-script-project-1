#!/bin/bash

CAMINHO_IMAGENS=/Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-livros

for imagem in $@
do
    convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done