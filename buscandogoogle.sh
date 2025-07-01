#!/bin/bash

# Verifica se o alvo foi fornecido
if [ -z "$1" ]; then
    echo "Erro: Faltou o domínio alvo."
    echo "Uso: $0 nomedoalvo.com"
    exit 1
fi

ALVO="$1"

echo "Iniciando pesquisas para o alvo: $ALVO"
echo "Aguarde o Firefox abrir..."

# Abre a primeira pesquisa em uma nova janela
firefox "https://google.com/search?q=site:pastebin.com+$ALVO" 2>/dev/null &

# Dá um tempinho para o Firefox iniciar antes de abrir novas abas
sleep 2

# Abre as demais pesquisas em novas abas
echo "Pesquisando no Trello..."
firefox --new-tab "https://google.com/search?q=site:trello.com+$ALVO" 2>/dev/null

echo "Pesquisando por arquivos sensíveis..."
firefox --new-tab "https://google.com/search?q=site:$ALVO+ext:php+OR+ext:txt+OR+ext:pdf">

echo "Pesquisas abertas no navegador."
