#import "template.typ": template
#show: template
= Qué es Git?
Es un software FOSS #footnote[Free and Open Source Software, o Software libre y de código abierto.] de control de versiones, creado por Linus Torvalds #footnote[También conocido por la creación del Kernel de Linux.]. Un software de control de versiones es un tipo de software que maneja los cambios que se le ha hecho a algún grupo de archivos, lo que nos permite mantener un control de 'qué', 'cómo' y 'cuándo' fue generado un cambio, además de el 'quién' lo ha hecho. Además, permite retroceder cambios hechos, en caso de necesitarse.

= Términos importantes <terminos>
- *Directorio*, también conocido como 'carpeta' en Windows.
- *Terminal o Línea de Comandos*, como una interfaz para introducir comandos de texto.
- *CLI*, Command Line Interface, o interfaz de línea de comandos. Comunmente se utiliza para describir programas que sólo existen en una línea de comandos o terminal.
- *Editor de texto*, programa que te permite modificar algún archivo de texto. Estos incluyen programas como Notepad de Windows, VIM o Nano para la terminal, o VSCode, (actualmente) el editor de texto más popular en la programación.
- *Repositorio*, "lugar donde se guarda algo". En el contexto, es la carpeta donde se mantiene un proyecto.
- *Github*, un sitio web que mantiene repositorios de forma Online. Distinto de Git!.

= Comandos de Git importantes <comandos>
- *init*: inicia un repositorio de Git en el directorio actual.
- *clone*: comando que trae un repositorio almacenado de forma online y lo _clona_ hacia algún directorio local.
- *add*: Sigue archivos y cambios en Git.
- *commit*: Guarda tus archivos y cambios en Git.
- *push*: Sube los 'commits' creados a un repositorio remoto, como a GitHub.
- *pull*: Descarga cambios de un repositorio remoto. Es el opuesto de push.

= Instalando Git
Se provee un pequeño resumen del proceso de instalación en el siguiente espacio. Se recomienda leer #link("https://www.atlassian.com/git/tutorials/install-git")[la siguiente guía] provista por Atlassian para más información, problemas y otros.

== Mac y Linux
En Linux y Mac, lo común es que este programa ya se encuentre instalado, y es verificable con el comando `git --version`

En caso de no estar instalado, favor de revisar un tutorial para tu sistema operativo correspondiente. En la mayoría de casos, puedes hacerlo de la siguiente manera:

```bash
# Para MacOS
$ brew install git

# Derivados de Debian (o de Ubuntu)
$ sudo apt install git

# Derivados de Arch
$ sudo pacman -Sy git
```

== Windows
Windows es un poco especial en el caso de Git, porque no viene por defecto. Su instalación es relativamente sencilla. Se debe #link("https://git-scm.com/download/win")[descargar el instalador desde el sitio oficial].

En general, se recomienda "apretar siguiente" durante todo el proceso de instalación, pues los valores por defecto son perfectamente razonables para la gran mayoría de usuarios.

= Post instalación
Se debe de configurar el usuario que va a utilizar git. Se recomienda hacerlo de forma global para tu computador personal (o usuario propio si utilizas los computadores del club), o configurarlos individualmente para cada repositorio si utilizas algun computador o usuario público. En la terminal, ingresa los siguientes comandos:

```bash
# Utilizando mis datos como ejemplo.
$ git config --global user.name "Rafael Morales"
$ git config --global user.email "rmorales@utem.cl"
```

Adicionalmente, y pensando que ya cuentes con una cuenta de github, se recomienda que agregues una llave de SSH para trabajar con github (en el caso de Linux/Mac), o que instales el ayudante de credenciales de Git para Windows.

// TODO: Explicar el proceso de SSH en Linux / Mac

= Primeros pasos
Dependiendo de tu terminal, y la configuración de este, es posible que recibas información de que estás en un directorio que corresponde a un repositorio de Github por algún mensaje en tu prompt.

Para el caso mío, mi prompt me indica la siguiente información, visible en @repo
- El usuario activo, en este caso 'rafael'.
- El directorio en el que estoy, en este caso '.../taller-github'.
- La rama de git en la que estoy, en este caso 'main'.
- La hora al momento de crearse el prompt. Las 17:00 en este caso.

#figure(
  image("assets/directory-list.png"),
  caption: [Lista de archivos de este repositorio.],
) <repo>

La forma en que este prompt sabe que estamos en un repositorio de git, es por la existencia de una carpeta oculta llamada `.git`, visible como primer item en @repo, que contiene toda la información de los cambios hechos en este repositorio.

Bajo este punto, el repositorio de esta guía no ha recibido ningún cambio, por lo que documentaré el proceso en que este primer cambio será hecho. Como referencia de la estructura de este directorio, se adjunta @tree

#figure(
  image("assets/tree.png"),
  caption: [Estructura del repositorio que mantiene este documento.],
) <tree>

Lo primero que haré será verificar el estado del directorio con el comando `git status`. Este comando me muestra todos los archivos creados, modificados o borrados del directorio *que aún no han sido guardados en un commit*.

#figure(
  image("assets/status.png"),
  caption: [Output del comando status de git],
) <status>

Para el caso de @status, ningún archivo ha sido agregado al repositorio, por lo que iniciaré agregando los archivos `.typ` con el comando `git add *.typ`, y ver como esto modifica el output de `git status`.