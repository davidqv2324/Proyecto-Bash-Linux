#!/bin/bash

crear_archivo() {
    read -p "Nombre del archivo: " archivo
    touch "$archivo"
    echo "Archivo creado correctamente."
}

copiar_archivo() {
    read -p "Archivo origen: " origen
    read -p "Archivo destino: " destino

    if [ -f "$origen" ]; then
        cp "$origen" "$destino"
        echo "Archivo copiado."
    else
        echo "El archivo origen no existe."
    fi
}

cambiar_permisos() {
    read -p "Nombre del archivo: " archivo
    read -p "Permisos (ejemplo 755): " permisos

    if [ -f "$archivo" ]; then
        chmod "$permisos" "$archivo"
        echo "Permisos modificados."
    else
        echo "Archivo no encontrado."
    fi
}

eliminar_archivo() {
    read -p "Nombre del archivo: " archivo

    if [ -f "$archivo" ]; then
        rm "$archivo"
        echo "Archivo eliminado."
    else
        echo "Archivo no encontrado."
    fi
}

while true
do
    echo ""
    echo "========== MENU =========="
    echo "1. Crear archivo"
    echo "2. Copiar archivo"
    echo "3. Cambiar permisos"
    echo "4. Eliminar archivo"
    echo "5. Salir"

    read -p "Seleccione una opcion: " opcion

    case $opcion in
        1)
            crear_archivo
            ;;
        2)
            copiar_archivo
            ;;
        3)
            cambiar_permisos
            ;;
        4)
            eliminar_archivo
            ;;
        5)
            echo "Saliendo..."
            break
            ;;
        *)
            echo "Opcion invalida."
            ;;
    esac
done
