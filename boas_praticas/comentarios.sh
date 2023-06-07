#!/usr/bin/env bash

# Os comentários são muito importantes para que outras pessoas entendam o que você está fazendo, 
# eles devem ser utilizados da forma mais sucinta possível,sem muitos detalhes, pois o código deve ser auto explicativo.

# Lynx instalado?
[ ! -x "$(which lynx)" ] && printf "Precisamos instalar o Lynx, por favor, digite sua senha:\n " && sudo apt install lynx -y