#!/bin/bash

# Lee dos números desde la entrada del usuario
echo "Introduce dos números:"
read a
read b

# Pide al usuario que elija una operación
echo "Elige una operación:"
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
read choice

# Realiza la operación seleccionada
case $choice in
    1) res=$(echo "$a + $b" | bc) ;;
    2) res=$(echo "$a - $b" | bc) ;;
    3) res=$(echo "$a * $b" | bc) ;;
    4) res=$(echo "scale=2; $a / $b" | bc) ;;
    *) echo "Operación no válida" ;;
esac

# Muestra el resultado
echo "Resultado: $res"