# Colección de Scripts Bash

Este repositorio contiene una colección de scripts de ejemplo para aprender y practicar programación en Bash.

## Contenido del Repositorio

### 1. `test_commands.sh`
Script básico de introducción que muestra la fecha y el directorio actual.

### 2. `control_flow.sh`
Ejemplos de estructuras de control de flujo:
- Condicionales `if-else`
- Bucles `for` y `while`
- Estructura `case`

### 3. `args_input.sh`
Muestra cómo interactuar con el usuario y los argumentos del script:
- Lectura de argumentos pasados al script (`$1`, `$@`, `$#`)
- Entrada interactiva con `read`
- Validación de respuestas (sí/no)

### 4. `functions.sh`
Demostración de funciones y ámbito de variables:
- Definición y llamada de funciones
- Paso de argumentos a funciones
- Variables locales vs globales

### 5. `file_ops.sh`
Operaciones comunes con archivos y directorios:
- Verificación de existencia de directorios
- Creación y escritura de archivos
- Comprobación de contenido

### 6. `git_auto.sh`
Herramienta de automatización para Git:
- Ejecuta secuencialmente `add`, `commit` y `push`.
- Requiere un mensaje de commit como argumento.
- Uso: `./git_auto.sh "Mensaje del commit"`

## Cómo ejecutar los scripts

Asegúrate de que los scripts tengan permisos de ejecución:
```bash
chmod +x *.sh
```

Ejecuta un script directamente:
```bash
./nombre_del_script.sh
```
