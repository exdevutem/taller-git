#import "template.typ": template
#import "@preview/big-todo:0.2.0": *

#show: template

= ¿Qué es Git?
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

#pagebreak()

#include "src/instalacion.typ"
#include "src/post-install.typ"
#include "src/first-steps.typ"

#pagebreak()
#todo_outline
