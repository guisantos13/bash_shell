#!/usr/bin/env bash
#
# listaUsuarios.sh      - Extrai usuarios do /etc/passwd
# Site:             https://www.aprendashellscript.com
# Autor:            Guilherme Santos
# Manutenção:       Guilherme Santos
#
# ------------------------------------------------------------------------ #
# Este programa irá extrair os usuarios do /etc/passwd, havendo a possibilidade
# de colocar em maiusculo e em ordem alfabética.                                 
#                                                                         
#   Exemplos:                                                                
#      $ ./listaUsuarios.sh -s -m                                                    
#      Neste exemplo ficará em maiusculo e em ordem alfabética.                            
# ------------------------------------------------------------------------ #    
# Histórico:
#
#   v1.0 06/06/2023, Guilherme:
#       - Início do programa
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.16
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [OPÇÕES]

    -h - Menu de ajuda
    -v - Versão
    -s - Ordernar a saída
    -m - Coloca em maiúsculo
"
VERSAO="v1.0"
# ------------------------------------------------------------------------ #
# ------------------------------- EXECUÇÃO ----------------------------------------- #
if [ "$1" = "-h" ]; then
    echo "$MENSAGEM_USO" && exit 0
fi
if [ "$1" = "-v" ]; then
    echo "$VERSAO" && exit 0
fi
if [ "$1" = "-s" ]; then
    echo "$USUARIOS" | sort && exit 0
fi
if [ "$1" = "-m" ]; then
    echo "$USUARIOS" | tr [a-z] [A-Z] && exit 0
fi
echo "$USUARIOS"
