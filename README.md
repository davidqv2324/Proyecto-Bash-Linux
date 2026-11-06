Proyecto Bash Linux
Autor
David Quispe Vilcayaure

Curso
Shell Scripting

Descripción
Proyecto desarrollado en Bash para automatizar tareas básicas de administración y monitoreo de servidores Linux.

El sistema permite:

Obtener información del sistema operativo.
Administrar archivos mediante menús interactivos.
Analizar inventarios de servidores.
Detectar servidores en estado de alerta.
Generar reportes automáticos.
Actualizar estados utilizando SED.
Filtrar servidores críticos mediante AWK.
Programar tareas mediante CRON.
Gestionar versiones utilizando Git y GitHub.
Tecnologías Utilizadas
Ubuntu 24.04 LTS
Bash
AWK
SED
CRON
Git
GitHub
Estructura del Proyecto
Proyecto_Bash/
│
├── sistema.sh
├── gestor.sh
├── automatizacion.sh
├── analisis.sh
├── README.md
│
├── datos/
│   ├── mensaje.txt
│   ├── usuarios.txt
│   └── servidores.txt
│
├── reportes/
│   ├── reporte.txt
│   └── reporte_servidores.txt
│
└── evidencias/
Script 1: sistema.sh
Descripción
Muestra información básica del servidor Linux.

Información mostrada
Usuario actual
Fecha y hora
Sistema operativo
Versión del kernel
Espacio disponible en disco
Memoria RAM
Tiempo de actividad
Ejecución
chmod +x sistema.sh
./sistema.sh
Parámetros
No requiere parámetros.

Script 2: gestor.sh
Descripción
Permite administrar archivos mediante un menú interactivo.

Funcionalidades
Ver archivos
Crear archivos
Copiar archivos
Cambiar permisos
Eliminar archivos
Buscar archivos
Comandos utilizados
ls
find
touch
cp
chmod
rm
Ejecución
chmod +x gestor.sh
./gestor.sh
Parámetros
No requiere parámetros.

Script 3: automatizacion.sh
Descripción
Permite administrar tareas programadas mediante CRON.

Funcionalidades
Programar tareas
Ver tareas programadas
Eliminar tareas programadas
Ejecutar scripts
Ejecución
chmod +x automatizacion.sh
./automatizacion.sh
Parámetros
No requiere parámetros.

Script 4: analisis.sh
Descripción
Permite analizar y monitorear un inventario de servidores Linux.

Funcionalidades
Ver inventario de servidores
Muestra el contenido de:

datos/servidores.txt
Ver servidores en alerta
Utiliza AWK para identificar servidores cuyo uso de disco es mayor a 70%.

Comando utilizado:

awk 'NR>1 && $3 > 70'
Generar reporte de análisis
Genera automáticamente:

reportes/reporte_servidores.txt
Actualizar estados
Utiliza SED para modificar estados dentro del inventario.

Comando utilizado:

sed -i 's/normal/revisado/g'
Ejecución
chmod +x analisis.sh
./analisis.sh
Parámetros
No requiere parámetros.

Uso de AWK
Archivo:

datos/servidores.txt
Comando:

awk 'NR>1 && $3 > 70' datos/servidores.txt
Función:

Filtrar servidores con uso de disco superior al 70%.

Uso de SED
Archivo:

datos/servidores.txt
Comando:

sed -i 's/normal/revisado/g' datos/servidores.txt
Función:

Actualizar automáticamente el estado de los servidores.

Automatización con CRON
Configuración utilizada:

0 8 * * * /home/david/Proyecto_Bash/analisis.sh
Descripción:

Ejecuta automáticamente el análisis de servidores todos los días a las 08:00 AM.

Repositorio GitHub
Repositorio del proyecto:

https://github.com/davidqv2324/Proyecto-Bash-Linux

Conclusión
Mediante Bash fue posible automatizar tareas administrativas y de monitoreo de servidores Linux utilizando variables, funciones, estructuras de control, AWK, SED y CRON. Además, se empleó Git y GitHub para gestionar el código fuente y mantener el control de versiones del proyecto.
