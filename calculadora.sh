#!/bin/bash

echo "Seja bem vindo a Calculadora"

read -p "Digite o primeiro número: " num1
read -p "Digite o segundo número: " num2

echo "Número da Operações"

 echo "Escolha a operação desejada:"
 echo "1 - Adição"
 echo "2 - subtração"
 echo "3 - Multiplicação"
 echo "4 - Divisão"

read -p "Digite o numero da sua operação: " operacao

case $operacao in

1)
 resultado=$(($num1 + $num2))
 echo "resultado da adição: $resultado"
 ;;

2)
 resultado=$(($num1 - $num2))
 echo "resultado da subtração: $resultado"
 ;;

3)
 resultado=$(($num1 * $num2))
 echo "resultado da multiplicação: $resultado"
 ;;

4) 
 if [ $num2 -eq 0 ]; then
  echo "Divisão por zero não é permitida!"

 else

  resultado=$(($num1 / $num2))
  echo "resultado da divisão: $resultado"

 fi
 ;;

*) 
 echo "opção invalida, tente novamente"
 ;;

esac
