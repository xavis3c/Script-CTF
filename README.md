
#  🎮 CTF Screenshot Organizer

Este script está diseñado para organizar las capturas de pantalla de los CTF que realizas en DockerLabs o la plataforma que desees. El script mueve las capturas desde tu carpeta **Descargas** a **Documentos**, organizándolas en una estructura de carpetas basada en la dificultad de la máquina (Muy fácil, Fácil, Medio, Difícil).

## ¿Cómo funciona?

1. **Captura de pantallas:** Después de resolver un CTF, tomas capturas de pantalla y las guardas en **Descargas**.
2. **Mover a una carpeta específica:** Luego, mueves esas capturas a una carpeta con el nombre del CTF dentro de **Descargas**.
3. **Ejecutar el script:** Una vez que hayas metido las capturas en la carpeta del CTF, corres el script.
4. **El script organiza las capturas:**<br/>
   - Te pedirá el nombre de la carpeta que creaste en **Descargas**.
   - Luego, te preguntará sobre la dificultad de la máquina (Muy fácil, Fácil, Medio, Difícil).
   - El script moverá la carpeta con las capturas de **Descargas** a **Documentos** > **Maquinas DockerLabs** > a la subcarpeta correspondiente según la dificultad.<br/>

## Instalación

No se requiere instalación. Solo necesitas tener un entorno Linux con acceso al script.

1. Clona este repositorio o descarga el archivo `ctf.sh`:
   ```bash
   git clone https://github.com/tu_usuario/ctf-scripts.git


## Uso
Coloca las capturas de pantalla en una carpeta dentro de Descargas con el nombre del CTF que realizaste.<br/>
Navega a la carpeta donde tienes el script ctf.sh.<br/>
Ejecuta el script con el siguiente comando:

`bash ctf.sh`


**El script te pedirá que ingreses:**<br/>
El nombre de la carpeta que contiene las capturas.<br/>
La dificultad del CTF (Muy fácil, Fácil, Medio, Difícil).<br/>
Las capturas se moverán automáticamente a la carpeta correspondiente dentro de Documentos > Maquinas DockerLabs > la subcarpeta de dificultad.

## Ejemplo de ejecución
```bash
$ bash ctf.sh
Introduce el nombre de la carpeta del CTF (por ejemplo, "dockerlab_ctf_1"):
dockerlab_ctf_1
¿Qué tan difícil fue el CTF?
1. Muy fácil
2. Fácil
3. Medio
4. Difícil
```

### Listo, espero te funcione. Con el tiempo le hare mejoras.
