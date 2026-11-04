Proyecto Bash Linux
Autor
David Quispe Vilcayaure

Curso
Shell Scripting

Descripción
Proyecto desarrollado en Bash para automatizar tareas básicas de administración en Linux.

Las funcionalidades implementadas permiten:

Consultar información del sistema.
Gestionar archivos mediante un menú interactivo.
Generar reportes automáticos.
Procesar información utilizando AWK y SED.
Automatizar tareas mediante CRON.
Gestionar versiones del proyecto mediante Git y GitHub.
Requisitos
Ubuntu 24.04 LTS
Bash
AWK
SED
CRON
Git
Estructura del Proyecto
Proyecto_Bash/
│
├── sistema.sh
├── gestor.sh
├── automatizacion.sh
├── README.md
│
├── datos/
│   ├── mensaje.txt
│   └── usuarios.txt
│
├── reportes/
│   └── reporte.txt
│
└── evidencias/
Script 1: sistema.sh
Descripción
Muestra información básica del sistema operativo Linux.

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

Ejemplo de uso
./sistema.sh
Script 2: gestor.sh
Descripción
Permite administrar archivos mediante un menú interactivo.

Funcionalidades
Crear archivos
Copiar archivos
Cambiar permisos
Eliminar archivos
Salir
Ejecución
chmod +x gestor.sh
./gestor.sh
Parámetros
No requiere parámetros.

Ejemplo de uso
========== MENU ==========
1. Crear archivo
2. Copiar archivo
3. Cambiar permisos
4. Eliminar archivo
5. Salir
Ejemplo práctico
Seleccione una opcion: 1
Nombre del archivo: prueba.txt
Archivo creado correctamente.
Script 3: automatizacion.sh
Descripción
Genera automáticamente un reporte con información del sistema.

Archivo generado
reportes/reporte.txt
Información incluida
Fecha y hora
Usuario actual
Sistema operativo
Uso del disco
Uso de memoria RAM
Estado del almacenamiento
Ejecución
chmod +x automatizacion.sh
./automatizacion.sh
Parámetros
No requiere parámetros.

Ejemplo de uso
./automatizacion.sh
Resultado:

Reporte generado correctamente.
Uso de AWK
Archivo utilizado:

datos/usuarios.txt
Comando utilizado:

awk '$2=="TI" {print $1}' datos/usuarios.txt
Resultado esperado:

Juan
Pedro
Ana
Uso de SED
Archivo utilizado:

datos/mensaje.txt
Comando utilizado:

sed -i 's/error/incidente/g' datos/mensaje.txt
Resultado esperado:

El sistema tiene un incidente de conexion.
Automatización con CRON
Configuración utilizada:

0 8 * * * /home/david/Proyecto_Bash/automatizacion.sh
Descripción
La tarea programada ejecuta automáticamente el script automatizacion.sh todos los días a las 08:00 AM.

Repositorio GitHub
Repositorio del proyecto:

https://github.com/davidqv2324/Proyecto-Bash-Linux
Conclusión
Mediante el uso de Bash se logró automatizar tareas administrativas básicas en Linux, aplicando variables, estructuras de control, funciones, AWK, SED y CRON. Asimismo, se utilizó Git y GitHub para gestionar versiones y almacenar el proyecto de forma remota.
