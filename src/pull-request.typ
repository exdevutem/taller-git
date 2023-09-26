= Pull Request

Un pull request es una petición que se le hace a un mantenedor de un repositorio para que reuna dos ramas que se han separado, y unifique los cambios de estas en una sola rama. Luego de que el trabajo de una rama se haya desarrollado, el paso final de la vida de esta rama es que sea 'mergeada' o combinada con su rama de origen.

#figure(
  image("../assets/pull-requests/diagram.png"),
  caption: [Diagrama típico de un merge commit (y de un pull request). #link("https://www.atlassian.com/git/tutorials/using-branches/git-merge")[Fuente: atlassian.]],
) <diagram>

Es importante notar que el pull request es una acción de Github! En git, el paso de combinar dos ramas es llamado "merge", y posee sus comandos específicos para este proceso. El pull request es similar a un issue (ver @issues), en el sentido de que genera un espacio de discusión y revisión de código entre compañeros de equipo o contribuyentes de un proyecto.

== Pull request en un repositorio donde eres contribuyente.

Cuando hablamos de ser contribuyente de un repositorio, nos referimos a que tienes permisos de escritura sobre este repositorio#footnote("Es un poquito más complejo que solo eso, pero esta definición basta por ahora."), por lo que puedes empujar commits sin problemas, al igual que crear ramas.

El paso a paso típico que harás para estos repositorios es la creación de una rama personal de trabajo, normalmente llamadas "feature branches", que encapsulan algún cambio en el que se haya trabajado. Finalizado este trabajo, en el repositorio de github, seleccionarás *la feature branch* en la que trabajaste, y apretarás el ícono de creación de pull request. Proveerás una descripción en caso de ser necesario, y la publicarás. Bajo este punto, cualquier persona relacionada al repo opinará, solicitará cambios, revisará y evaluará el pull request, y una vez sea aprobado, se mergeará este cambio y se cerrará el pull request.

#figure(
  image("../assets/pull-requests/feature branch.png"),
  caption: [Vista del repositorio desde un feature branch.],
) <ftbranch>

Para este ejemplo, utilizaremos el repositorio de la API del exdev (wip, amén). Fijandose en @ftbranch, notar como la selección de la rama está ubicada en "auth", que es nuestra feature branch del momento. Debajo del botón verde de "code", en donde puedes copiar las referencias para clonar el repositorio, puedes ver una sección que dice contribuir, en donde se te dará el espacio de crear el pull request (ver @contribuir).

#figure(
  image("../assets/pull-requests/contribuir.png"),
  caption: [Pestaña de contribuir],
) <contribuir>

La siguiente ventana va a mostrarte 3 cosas importantes: un formulario de la pull request, donde puedes agregar una descripción detallada (o no tanto) de los cambios que hiciste en esta PR (ver @formulario); un resumen de los commits hechos en esta rama que serían cometidos en este pull request (ver @resumen-pr); y finalmente una lista detallada de todos los cambios hechos, al final de la página.

#figure(
  image("../assets/pull-requests/new-pr.png"),
  caption: [Formulario de creación de una nueva PR],
) <formulario>

Prestar mucha atención a la bara que aparece justo debajo del título "Open a pull request" en @formulario. Si se fijan, esta barra detalla el cómo se hará este pull request; cual es la rama que recibirá los cambios, y qué cambios serán. El cambio típico solicitado es _desde la rama actual_ hacia _la rama principal_, por lo que normalmente no deberías tocar esto. Hay casos, sin embargo, donde quizás quieres crear una pull request distinta, y es aquí donde deberías cambiar esto. Para el caso de la imagen, la rama "main" recibirá los cambios de "auth", y no se presenta ningún problema al momento de combinar estos cambios (denotado por el texto verde "Able to merge").

#figure(
  image("../assets/pull-requests/pr-commits.png"),
  caption: [Resumen de commits de la PR],
) <resumen-pr>

== Pull request en un repositorio open source

Para contribuir en un repositorio Open Source, el proceso es muy similar. La gran diferencia es que en vez de crear una rama y modificar el repositorio oficial, forkeas el repositorio de github, lo modificas, y luego pides una pull request entre repositorios! Github facilita este tipo de acciones, por lo que las opciones para crear estas PR se presentan apenas se detectan cambios en tu fork.

