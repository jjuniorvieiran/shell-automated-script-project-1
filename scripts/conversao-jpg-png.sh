#!/bin/bash

cd /Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-livros

for imagem in *.jpg
do
    convert $imagem $imagem.png
done