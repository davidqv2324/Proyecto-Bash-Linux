#!/bin/bash

ARCHIVO="/home/david/Proyecto_Bash/datos/servidores.txt"
REPORTE="/home/david/Proyecto_Bash/reportes/reporte_servidores.txt"

while true
do


    echo "======================================"
    echo " ANALISIS Y MONITOREO DE SERVIDORES"
    echo "======================================"
    echo ""
    echo "1. Ver inventario de servidores"
    echo "2. Ver servidores en alerta (>70%)"
    echo "3. Generar reporte de analisis"
    echo "4. Actualizar estados de servidores"
    echo "5. Salir"
    echo ""

    read -p "Opcion: " opcion

    case $opcion in

        1)


            echo "===== INVENTARIO DE SERVIDORES ====="
            echo ""

            cat "$ARCHIVO"

            echo ""
            read -p "Presione Enter para continuar..."
            ;;

        2)


            echo "===== SERVIDORES EN ALERTA ====="
            echo ""

            awk 'NR>1 && $3 > 70 {print $1, $2, $3"%", $4}' "$ARCHIVO"

            echo ""
            read -p "Presione Enter para continuar..."
            ;;

        3)


            echo "===== GENERANDO REPORTE ====="
            echo ""

            {
                echo "======================================"
                echo " REPORTE DE ANALISIS DE SERVIDORES"
                echo "======================================"
                echo ""
                echo "Fecha:"
                date
                echo ""
                echo "Servidores con uso de disco mayor al 70%"
                echo ""

                awk 'NR>1 && $3 > 70 {print $1, $2, $3"%", $4}' "$ARCHIVO"

            } > "$REPORTE"

            echo "Reporte guardado correctamente."
            echo ""
            echo "Ubicacion:"
            echo "$REPORTE"

            echo ""
            read -p "Presione Enter para continuar..."
            ;;

        4)


            echo "===== ACTUALIZAR ESTADOS ====="
            echo ""

            sed -i 's/normal/revisado/g' "$ARCHIVO"

            echo "Estados actualizados correctamente."
            echo ""
            echo "'normal' fue reemplazado por 'revisado'."

            echo ""
            read -p "Presione Enter para continuar..."
            ;;

        5)

            echo "Saliendo..."
            break
            ;;

        *)

            echo "Opcion invalida."
            sleep 2
            ;;

    esac

done
