#!/bin/env bash

#s Geral
# tera um menu para escolher em qual tradução sera feita
# tera um loop para o user poder escolher mais de uma vez
# menu tera ingles portugues ; portugues ingles; portugues espanhol; espanhou portugues
# o programa mostrará tudas as saida na tela 
# o programa tbm mostrará a palavra ou frase de entrada para o user poder comparar




# Solicita o nome do usuário
#read -p "Por favor, Entre Com A Palavra Ou Frase Para Traduzir " nome

clear
# Função para exibir o menu
# Mensagem para o usuário
if whatis trans; then
    echo ""
else
    echo -e "\033[31;1mTem que instalar o translate-shell\033[m" && sleep 4s && exit 1
fi    

mostrar_menu() {
    echo "Menu:"
    echo "1. Traduzir"
    echo "2. Sair"
}

# Loop do menu
while true; do

    read -p "Por favor, entre com a palavra ou frase para traduzir: " nome

    mostrar_menu
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            echo -e "\033[32;1mTraduzindo para Português\033[m"
            trans -b en:pt-br "$nome"
            echo  ""
            echo -e "\033[32;1mTraduzindo para o Espanhol\033[m"
            trans -b en:es "$nome"
            echo ""
            ;;
        2)
            echo "Saindo do programa..."
            exit 0
            ;;
        *)
            echo "Opção inválida. Por favor, escolha novamente."
            ;;
    esac
   echo -e "\033[32;1mDeseja Ficar ou Sair (s/n)?\033[m " 
    read resp
    if [[ "$resp" = "n" ]]; then
        echo "Saindo do programa..."
        exit 0
    fi


done

