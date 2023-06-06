#!/usr/bin/env bash

VAR=""
VAR2=""

if [ "$VAR" = "$VAR2" ]; then
    echo "São iguais"
else
    echo "São diferentes"
fi

# Uma outra forma de testar condições é usando o operador && e o operador ||

[ $VAR   =   $VAR2 ] && echo "São iguais" || echo "São diferentes"
