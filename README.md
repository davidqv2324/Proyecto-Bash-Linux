# 🐧 Proyecto Bash Linux — Administración & Monitoreo de Servidores

![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04_LTS-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Bash](https://img.shields.io/badge/Shell-Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)
![Git](https://img.shields.io/badge/Version_Control-Git-F05032?style=for-the-badge&logo=git&logoColor=white)

**Autor:** David Quispe Vilcayaure  
**Curso:** Shell Scripting  
**Repositorio GitHub:** [davidqv2324/Proyecto-Bash-Linux](https://github.com/davidqv2324/Proyecto-Bash-Linux)

---

## 📋 Descripción del Proyecto

Sistema automatizado desarrollado en **Bash** para la administración, análisis y monitoreo básico de infraestructura en entornos Linux. Permite simplificar las tareas operativas mediante menús interactivos, procesamiento de texto con herramientas avanzadas como `AWK` y `SED`, y ejecución programada mediante tareas `CRON`.

### ✨ Funcionalidades Principales
- 🖥️ **Monitoreo de sistema:** Diagnóstico rápido del estado del servidor.
- 📁 **Gestión de archivos:** Menú interactivo para administración de directorios y permisos.
- 📊 **Análisis de inventarios:** Filtrado de servidores críticos con alto consumo de recursos.
- 📝 **Reportes automáticos:** Generación y actualización de registros de auditoría.
- ⏰ **Automatización:** Programación de tareas mediante tareas cronometradas.

---

## 🛠️ Tecnologías Utilizadas

| Tecnología | Descripción / Uso |
| :--- | :--- |
| **Ubuntu 24.04 LTS** | Sistema operativo base para ejecución y pruebas |
| **Bash** | Lenguaje de scripting principal |
| **AWK** | Filtrado estructurado de datos y detección de alertas |
| **SED** | Edición en flujo e inserción/reemplazo de datos |
| **CRON** | Programador de tareas en segundo plano |
| **Git / GitHub** | Control de versiones y alojamiento de código |

---

## 📂 Estructura del Proyecto

```text
Proyecto_Bash/
│
├── sistema.sh             # Script de diagnóstico general del sistema
├── gestor.sh              # Script interactivo para gestión de archivos
├── automatizacion.sh      # Script de administración de tareas CRON
├── analisis.sh            # Script de análisis e inventario de servidores
├── README.md              # Documentación principal del proyecto
│
├── datos/                 # Archivos de datos e inventarios
│   ├── mensaje.txt
│   ├── usuarios.txt
│   └── servidores.txt
│
├── reportes/              # Archivos de reportes generados
│   ├── reporte.txt
│   └── reporte_servidores.txt
│
└── evidencias/            # Capturas y respaldos del sistema
