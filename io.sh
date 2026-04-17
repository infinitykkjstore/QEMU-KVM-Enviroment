#!/bin/bash

while true
do
  # Este script gera um arquivo de 100kb com conteúdo aleatório e um nome aleatório no diretório atual.
  # Em seguida, ele exibe um contador regressivo de 10 segundos no terminal.

  # Gera um nome de arquivo aleatório de 8 caracteres
  FILENAME=$(LC_ALL=C tr -dc 'A-Za-z0-9' </dev/urandom | head -c 8).txt

  # Cria o arquivo com 100kb de dados aleatórios
  echo "Criando arquivo '$FILENAME' com 100kb de conteúdo aleatório..."
  base64 /dev/urandom | head -c 102400 > $FILENAME

  echo "Arquivo '$FILENAME' criado com sucesso."
  echo ""

  # Inicia o contador regressivo
  echo "Iniciando contador regressivo..."
  for i in {1000..1}
  do
     echo -ne "Tempo restante: $i segundos... 
"
     sleep 1
  done

  echo -e "

Contador finalizado!"
  echo "Script concluído."
done
