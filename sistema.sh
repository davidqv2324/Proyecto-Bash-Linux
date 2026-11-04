#!/bin/bash

# ==========================================
# Script: sistema.sh
# Descripcion:
# Muestra informacion basica del sistema.
# ==========================================

USUARIO=$(whoami)
FECHA=$(date)

echo "========================================="
echo "      INFORMACION DEL SISTEMA"
echo "========================================="

echo "Usuario actual: $USUARIO"
echo "Fecha y hora: $FECHA"

echo ""
echo "Sistema Operativo:"
grep PRETTY_NAME /etc/os-release

echo ""
echo "Version del Kernel:"
uname -r

echo ""
echo "Uso de Disco:"
df -h /

echo ""
echo "Memoria RAM:"
free -h

echo ""
echo "Tiempo activo:"
uptime
