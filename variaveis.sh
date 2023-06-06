#!/usr/bin/env bash

NOME="João da Silva"

echo "Olá, $NOME"

NUMERO_1=24
NUMERO_2=45

TOTAL=$((NUMERO_1+NUMERO_2))

echo "Total: $TOTAL"

SAIDA_CAT="$(cat /etc/passwd | grep gsantos)"

echo "$SAIDA_CAT"

######## Variaveis reservadas #########

echo "Todos os parametros: $*"

echo "Quantos parametros: $#"

echo "Saída do ultimo comando: $?"

echo "PID: $$"

echo "Nome do arquivo: $0"