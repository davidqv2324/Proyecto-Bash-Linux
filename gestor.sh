#!/bin/bash

ver_archivos() {

    echo ""
    echo "===== ARCHIVOS DISPONIBLES ====="
    echo ""

    ls -lh

}

crear_archivo() {

    read -p "Nombre del archivo: " archivo

    touch "$archivo"

    echo "Archivo creado correctamente."

}

copiar_archivo() {

    read -p "Archivo origen: " origen
    read -p "Archivo destino: " destino

    if [ -f "$origen" ]
    then
        cp "$origen" "$destino"
        echo "Archivo copiado correctamente."
    else
        echo "El archivo origen no existe."
    fi

}

cambiar_permisos() {

    read -p "Nombre del archivo: " archivo

    if [ ! -e "$archivo" ]
    then
        echo "Archivo no encontrado."
        return
    fi

    echo ""
    echo "===== CAMBIAR PERMISOS ====="
    echo ""
    echo "1. 777  -> Lectura, escritura y ejecucion para todos"
    echo "2. 755  -> Propietario todo, grupo y otros lectura/ejecucion"
    echo "3. 700  -> Solo el propietario tiene acceso"
    echo "4. 644  -> Propietario lectura/escritura, otros solo lectura"
    echo "5. 600  -> Archivo confidencial (solo propietario)"
    echo ""

    read -p "Seleccione una opcion: " opcionPermiso

    case $opcionPermiso in

        1)
            permisos=777
            descripcion="Acceso total para todos"
            ;;

        2)
            permisos=755
            descripcion="Script ejecutable"
            ;;

        3)
            permisos=700
            descripcion="Acceso privado"
            ;;

        4)
            permisos=644
            descripcion="Documento de solo lectura para otros"
            ;;

        5)
            permisos=600
            descripcion="Archivo confidencial"
            ;;

        *)
            echo "Opcion invalida."
            return
            ;;
    esac

    chmod "$permisos" "$archivo"

    echo ""
    echo "Permisos modificados correctamente."
    echo "Permiso aplicado: $permisos"
    echo "Descripcion: $descripcion"
    echo ""

    ls -l "$archivo"

}

eliminar_archivo() {

    echo ""
    echo "===== ARCHIVOS DISPONIBLES ====="
    echo ""

    ls -lh

    echo ""

    read -p "Archivo a eliminar: " archivo

    if [ -f "$archivo" ]
    then
        rm "$archivo"
        echo "Archivo eliminado correctamente."
    else
        echo "Archivo no encontrado."
    fi

}

buscar_archivo() {

    read -p "Nombre del archivo a buscar: " archivo

    resultado=$(find . -name "$archivo")

    if [ -n "$resultado" ]
    then
        echo ""
        echo "Archivo encontrado:"
        echo "$resultado"
    else
        echo ""
        echo "Archivo no encontrado."
    fi

}

while true
do

    echo ""
    echo "========== GESTOR DE ARCHIVOS =========="
    echo "1. Ver archivos"
    echo "2. Crear archivo"
    echo "3. Copiar archivo"
    echo "4. Cambiar permisos"
    echo "5. Eliminar archivo"
    echo "6. Buscar archivo"
    echo "7. Salir"
    echo ""

    read -p "Seleccione una opcion: " opcion

    case $opcion in

        1)
            ver_archivos
            ;;

        2)
            crear_archivo
            ;;

        3)
            copiar_archivo
            ;;

        4)
            cambiar_permisos
            ;;

        5)
            eliminar_archivo
            ;;

        6)
            buscar_archivo
            ;;

        7)
            echo "Saliendo..."
            break
            ;;

        *)
            echo "Opcion invalida."
            ;;

    esac

done
