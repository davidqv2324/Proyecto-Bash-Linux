#!/bin/bash

REPORTE="reportes/reporte.txt"

echo "==================================" > "$REPORTE"
echo "REPORTE DEL SISTEMA" >> "$REPORTE"
echo "==================================" >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Fecha y Hora:" >> "$REPORTE"
date >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Usuario Actual:" >> "$REPORTE"
whoami >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Sistema Operativo:" >> "$REPORTE"
grep PRETTY_NAME /etc/os-release >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Uso del Disco:" >> "$REPORTE"
df -h >> "$REPORTE"

echo "" >> "$REPORTE"
echo "Uso de Memoria:" >> "$REPORTE"
free -h >> "$REPORTE"

USO=$(df / | tail -1 | awk '{print $5}' | tr -d '%')

echo "" >> "$REPORTE"
echo "Uso del Disco (porcentaje):" >> "$REPORTE"
echo "$USO%" >> "$REPORTE"

if [ "$USO" -gt 80 ]; then
    echo "ALERTA: Espacio en disco mayor al 80%" >> "$REPORTE"
else
    echo "Estado: Espacio en disco normal" >> "$REPORTE"
fi

echo "Reporte generado correctamente."
