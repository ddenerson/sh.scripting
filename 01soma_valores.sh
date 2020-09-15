#!/bin/bash

###################################################
#                                                 #
# soma_valores.sh -Soma de dois valores           #
#                                                 #
# Autor: Denerson Silva                           #
# Data : 10/09/2020                               #
#                                                 #
# Descrição: Crie um script que após executado    #
#            solicite dois valores como entrada   #
#            Esses valores devem ser somados e    #
#            o resultado exibido p/ o usuario     #
#                                                 #
# Exemplo de uso: ./soma_valores.sh               #
#                                                 #
##################################################

echo "========= Script soma de dois valores ============="
echo ""
read -p "1° Valor:" VALOR1
echo ""
read -p "2° Valor:" VALOR2
echo ""
echo A SOMA DE $VALOR1 COM $VALOR2 E: $(($VALOR1+$VALOR2))
echo ""
echo "Fim do Script"
