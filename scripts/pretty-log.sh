#!/bin/env bash

# Interrompe script se qualquer comando falhar
set -e

# Variaveis globais
RESET_COLOR='\033[0m'

# Funções

# Imprimir mensagem de erro
logErr() {
  local COLOR='\033[1;31m'
  printf "🔴 ${COLOR}%s${RESET_COLOR}\n" "$1"
}

# Imprimir mensagem de aviso
logWarn() {
  local COLOR='\033[1;33m'
  printf "🟡 ${COLOR}%s${RESET_COLOR}\n" "$1"
}

# Imprimir mensagem de sucesso
logSucc() {
  local COLOR='\033[1;32m'
  printf "🟢 ${COLOR}%s${RESET_COLOR}\n" "$1"
}

# Imprimir mensagem 
log() {
  local COLOR='\033[1;34m'
  printf "🔵 ${COLOR}%s${RESET_COLOR}\n" "$1"
}
