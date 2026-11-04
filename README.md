Proyecto Bash Linux
Autor
David Quispe Vilcayaure

Descripción
Proyecto desarrollado en Bash para automatizar tareas básicas de administración en Linux.

Scripts
sistema.sh
Muestra información básica del sistema:

Usuario actual
Fecha y hora
Sistema operativo
Espacio en disco
Memoria RAM
Ejecución:

./sistema.sh

gestor.sh
Permite:

Crear archivos
Copiar archivos
Cambiar permisos
Eliminar archivos
Ejecución:

./gestor.sh

automatizacion.sh
Genera un reporte automático en:

reportes/reporte.txt

Ejecución:

./automatizacion.sh

Herramientas utilizadas
Bash
AWK
SED
CRON
Ubuntu 24.04
Automatización con CRON
0 8 * * * /home/david/Proyecto_Bash/automatizacion.sh

La tarea ejecuta automáticamente el reporte todos los días a las 08:00 AM.

## Curso

Shell Scripting
