#!/usr/bin/env bash

# Buscar arquivos com extensão .sh

find ~/Cursos_Materiais/bash_shell/boas_praticas \
     -iname "*.sh" \
     -user gsantos \
     -exec ls -lh {} \;