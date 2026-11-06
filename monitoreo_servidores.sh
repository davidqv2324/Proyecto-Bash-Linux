#!/bin/bash

while true
do

    echo "======================================"
    echo " ANALISIS Y MONITOREO DE SERVIDORES "
    echo "======================================"
    echo "1. Ver lista de servidores"
    echo "2. Ver servidores en alerta"
    echo "3. Generar reporte"
    echo "4. Salir"

    read -p "Seleccione una opcion: " opcion

    case $opcion in

        1)
            cat datos/servidores.txt
            ;;

        2)
            awk '$4=="alerta" {print $1, $2}' datos/servidores.txt
            ;;

        3)
            cat datos/servidores.txt > reportes/reporte_servidores.txt
            echo "Reporte generado."
            ;;

        4)
            break
            ;;

        *)
            echo "Opcion invalida."
            ;;
    esac

    echo ""
    read -p "Presione Enter para continuar..."
done
