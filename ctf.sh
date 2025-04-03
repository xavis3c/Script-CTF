#!/bin/bash

# Establecer color tinto
color="\e[38;2;119;46;46m"  # Color tinto
reset="\e[0m"

# Mostrar banner con figlet usando la fuente 'big'
printf "${color}"
figlet -f big "CTF Organizer by: Xavis3c"
printf "${reset}"


# Script


# Directorio base donde están las máquinas dockerlsbs
BASE_DIR="$HOME/Documentos/MAQUINAS-DockerLabs"
DESCARGAS="$HOME/Descargas"

# Pedir nombre del CTF
read -p "Ingresa el nombre del CTF: " ctf_name

# Verificar si la carpeta de capturas existe en Descargas
if [ ! -d "$DESCARGAS/$ctf_name" ]; then
    echo "Error: La carpeta $ctf_name no existe en Descargas."
    exit 1
fi

# Pedir dificultad
echo "Selecciona la dificultad:"
echo "1) Maquinas-muy-facil"
echo "2) Maquinas-Facil"
echo "3) Maquinas-Medio"
echo "4) Maquinas-Dificil"
read -p "Opción: " difficulty

# Asignar carpeta según la opción
case $difficulty in
    1) folder="Maquinas-muy-facil" ;;
    2) folder="Maquinas-Facil" ;;
    3) folder="Maquinas-Medio" ;;
    4) folder="Maquinas-Dificil" ;;
    *) echo "Opción no válida"; exit 1 ;;
esac

# Crear la carpeta de dificultad si no existe
mkdir -p "$BASE_DIR/$folder"

# Ruta final del CTF
ctf_path="$BASE_DIR/$folder/$ctf_name"

# Verificar si ya existe la carpeta en el destino
if [ -d "$ctf_path" ]; then
    echo "La carpeta ya existe en el destino: $ctf_path"
    exit 0
fi

# Mover la carpeta desde Descargas al destino
mv "$DESCARGAS/$ctf_name" "$ctf_path"

if [ $? -eq 0 ]; then
    echo "Carpeta movida correctamente a: $ctf_path"
else
    echo "Error al mover la carpeta."
fi
