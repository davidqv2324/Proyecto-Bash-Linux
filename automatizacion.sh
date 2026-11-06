#!/bin/bash

while true
do

    echo ""
    echo "======================================"
    echo "      AUTOMATIZACION DE TAREAS"
    echo "======================================"
    echo ""
    echo "1. Programar una tarea"
    echo "2. Ver tareas programadas"
    echo "3. Eliminar una tarea programada"
    echo "4. Ejecutar un script ahora"
    echo "5. Salir"
    echo ""

    read -p "Opcion: " opcion

    case $opcion in

        1)

            echo ""
            echo "===== PROGRAMAR TAREA ====="
            echo ""

            echo "1. sistema.sh"
            echo "2. gestor.sh"
            echo "3. analisis.sh"
            echo ""

            read -p "Numero del script: " script

            case $script in

                1)
                    SCRIPT="/home/david/Proyecto_Bash/sistema.sh"
                    ;;

                2)
                    SCRIPT="/home/david/Proyecto_Bash/gestor.sh"
                    ;;

                3)
                    SCRIPT="/home/david/Proyecto_Bash/analisis.sh"
                    ;;

                *)
                    echo "Opcion invalida"
                    continue
                    ;;
            esac

            read -p "Hora (0-23): " hora
            read -p "Minuto (0-59): " minuto

            (crontab -l 2>/dev/null; echo "$minuto $hora * * * $SCRIPT") | crontab -

            echo ""
            echo "Tarea programada correctamente."
            echo ""
            ;;

        2)

            echo ""
            echo "===== TAREAS PROGRAMADAS ====="
            echo ""

            CRON=$(crontab -l 2>/dev/null)

            if [ -z "$CRON" ]
            then
                echo "No existen tareas programadas."
            else
                nl -w2 -s'. ' <<< "$CRON"
            fi

            echo ""
            ;;

        3)

            echo ""
            echo "===== ELIMINAR TAREA ====="
            echo ""

            crontab -l > /tmp/tareas_cron.txt 2>/dev/null

            if [ ! -s /tmp/tareas_cron.txt ]
            then
                echo "No existen tareas."
                continue
            fi

            nl -w2 -s'. ' /tmp/tareas_cron.txt

            echo ""

            read -p "Numero de tarea a eliminar: " num

            sed -i "${num}d" /tmp/tareas_cron.txt

            crontab /tmp/tareas_cron.txt

            echo ""
            echo "Tarea eliminada correctamente."
            echo ""
            ;;

        4)

            echo ""
            echo "===== EJECUTAR SCRIPT ====="
            echo ""

            echo "1. sistema.sh"
            echo "2. gestor.sh"
            echo "3. analisis.sh"
            echo ""

            read -p "Numero del script: " ejecutar

            case $ejecutar in

                1)
                    bash /home/david/Proyecto_Bash/sistema.sh
                    ;;

                2)
                    bash /home/david/Proyecto_Bash/gestor.sh
                    ;;

                3)
                    bash /home/david/Proyecto_Bash/analisis.sh
                    ;;

                *)
                    echo "Opcion invalida"
                    ;;
            esac

            echo ""
            ;;

        5)

            echo "Saliendo..."
            break
            ;;

        *)

            echo "Opcion invalida"
            ;;
    esac

done
