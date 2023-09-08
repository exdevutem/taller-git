= Primeros pasos
Dependiendo de tu terminal, y la configuración de este, es posible que recibas información de que estás en un directorio que corresponde a un repositorio de Github por algún mensaje en tu prompt.

Para el caso mío, mi prompt me indica la siguiente información, visible en @repo
- El usuario activo, en este caso 'rafael'.
- El directorio en el que estoy, en este caso '.../taller-github'.
- La rama de git en la que estoy, en este caso 'main'.
- La hora al momento de crearse el prompt. Las 17:00 en este caso.

#figure(
  image("../assets/first-steps/directory-list.png"),
  caption: [Lista de archivos de este repositorio.],
) <repo>

La forma en que este prompt sabe que estamos en un repositorio de git, es por la existencia de una carpeta oculta llamada `.git`, visible como primer item en @repo, que contiene toda la información de los cambios hechos en este repositorio.

Bajo este punto, el repositorio de esta guía no ha recibido ningún cambio, por lo que documentaré el proceso en que este primer cambio será hecho. Como referencia de la estructura de este directorio, se adjunta @tree

#figure(
  image("../assets/first-steps/tree.png"),
  caption: [Estructura del repositorio que mantiene este documento.],
) <tree>

Lo primero que haré será verificar el estado del directorio con el comando `git status`. Este comando me muestra todos los archivos creados, modificados o borrados del directorio *que aún no han sido guardados en un commit*.

#figure(
  image("../assets/first-steps/status.png"),
  caption: [Output del comando status de git],
) <status>

Para el caso de @status, ningún archivo ha sido agregado al repositorio, por lo que iniciaré agregando los archivos `.typ` con el comando `git add *.typ`, y ver como esto modifica el output de `git status`.

El resultado puede verse en @status2. Comparando con @status, vemos que git reconoce los archivos `main.typ` y `template.typ` como archivos que van a ser cometidos (apareciendo como verde). Los archivos del directorio `../assets/first-steps` y el archivo `main.pdf` no han sido sido agregados al repositorio (apareciendo de color rojo).

#figure(
  image("../assets/first-steps/new status.png"),
  caption: [Output del comando status tras agregar los archivos `.typ`],
) <status2>

Comúnmente verás gente que, al momento de agregar archivos, ejecutará el comando `git add .`, o similarmente, `git add *`. Estos comandos agregan "todos" los archivos que git status reconoce. Para este caso puntual, no quiero hacer esto! pues no quiero que git siga los cambios que haga sobre el archivo `main.pdf`. Este pequeño problema lo podremos solucionar prontamente.

Con estos cambios agregados, lo siguiente a hacer será `cometer` estos cambios a mi repositorio con el comando `git commit -m "Commit inicial"`. El resultado es una lista de los cambios que se han hecho en comparación al último commit hecho. En este caso, se ha creado el archivo `main.typ`, y el archivo `template.typ`.

#figure(
  image("../assets/first-steps/commit inicial.png"),
  caption: [Output del comando `git commit`.],
) <commit>

El último paso típico que nos queda es empujar nuestro cambios a nuestro repositorio remoto de Github. Al momento de crear un repositorio nuevo, sin archivos, github nos provee un par de instrucciones para poder sincronizar nuestro repositorio local a nuestro repositorio remoto:


#figure(
  image("../assets/first-steps/instrucciones github.png"),
  caption: [Instrucciones provistas por GitHub al crear un repositorio vacío.],
) <instrucciones>

En nuestro caso, nuestro repositorio no está vacío, y ya contiene el primer commit, por lo que podemos saltarnos varios de estos pasos y simplemente ingresar los comandos de agregar un repositorio remoto y empujar los cambios, tal y como se ve en @push

#figure(
  image("../assets/first-steps/push.png"),
  caption: [Output al momento de agregar un 'remoto' nuevo, y empujar los cambios],
) <push>

Finalmente, a modo de resumen, se agrega la línea de comandos al momento de hacer este proceso entero. Este nuevo commit consta de todos los cambios hechos hasta ahora, que incluyen toda la sección de primeros pasos.

#figure(
  image("../assets/first-steps/proceso resumido.png"),
  caption: [Output de terminal al momento de seguir todo el procedimiento descrito aquí, con los cambios creados hasta ahora.],
) <resumen>

#figure(
  image("../assets/first-steps/commit avanzado.png"),
  caption: [Si no se especifica un mensaje corto, Git abrirá el editor por defecto para crear uno más completo, tal y como se muestra en esta figura.],
) <commit-avanzado>
