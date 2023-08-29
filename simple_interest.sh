#!/bin/bash

# Este script calcula el interés simple.

# Solicitar el principal (monto inicial), tasa de interés y período en años.
read -p "Ingrese el principal (monto inicial): " principal
read -p "Ingrese la tasa de interés (%): " tasa
read -p "Ingrese el período en años: " periodo

# Calcular el interés simple
interes=$(echo "scale=2; $principal * $tasa * $periodo / 100" | bc)

# Calcular el monto total
monto_total=$(echo "scale=2; $principal + $interes" | bc)

# Mostrar los resultados
echo "Interés calculado: $interes"
echo "Monto total: $monto_total"
