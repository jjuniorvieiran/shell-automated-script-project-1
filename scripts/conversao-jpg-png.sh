#!/bin/bash

CAMINHO_IMAGENS=/Users/josejunior/dev/git/shell-automated-script-project-1-local/shell-automated-script-project-1/imagens-livros

convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png
convert $CAMINHO_IMAGENS/$2.jpg $CAMINHO_IMAGENS/$2.png