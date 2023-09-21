= Issues

En github, un Issue se refiere a un problema que se haya encontrado con el proyecto, del cual no se ha creado cambios aún. Estos varían enormemente; podrías levantar un Issue para informar de un bug que hayas encontrado en el programa, para solicitar que se implemente una nueva característica, para discutir el curso de acción del proyecto, para solicitar el cambio o eliminación de alguna característica, #link("https://github.com/twitter/the-algorithm/issues?page=26&q=is%3Aissue+is%3Aclosed")[para webiar a Elon Musk], etc, etc.

#figure(
  image("../assets/issues/mi-utem.png"),
  caption: [Listado de Issues en #link("https://github.com/exdevutem/mi-utem/issues")[el repositorio de la app Mi Utem.]],
) <miutem-issues>

La idea de un Issue es generar una discusión de acuerdo a un problema, y buscarle una solución de manera comunitaria, así como mantener una trazabilidad de los cambios que se han ido discutiendo.

Para crear un nuevo issue, solo necesitas ingresar a la parte de issues de un repositorio de Github, y apretar en `new issue`. Dentro, un formulario te indicará el título de la propuesta, y la descripción de la misma, en la cual puedes utilizar Markdown (ver @markdown) para describir tu problema de forma organizada, al igual que incluir imágenes y otras cosas.

#figure(
  grid(columns: (50%, 50%), rows: (auto), gutter: 1pt,
    image("../assets/issues/markdown.png"),
    image("../assets/issues/preview.png"),
  ),
  caption: [Markdown y preview en un comentario de Issues de Github],
) <markdown>

Creada la Issue, cualquier persona que pueda ver el repo puede comentar y discutirla al respecto (ver @comments), y cualquier cambio que sea relacionado a esta es adherido a la historia lineal del foro (ver @changes).

#figure(
  image("../assets/issues/comments.png"),
  caption: [Comentarios hechos en un Issue de Mi Utem],
)<comments>

#figure(
  image("../assets/issues/changes.png"),
  caption: [Diversos cambios han sido agregados a este Issue],
)<changes>

Por último, cuando la discusión dio frutos, cuando no se llegó a ningún lado, o en general, cuando este issue termina su relevancia, puede ser cerrado de forma indefinida.

#figure(
  image("../assets/issues/finished.png"),
  caption: [Esta Issue ha sido resuelta.],
)<finished>

== ¿Cuándo debería levantar un Issue?

Siempre que tengas dudas! Lo ideal es que investigues en el repositorio si tu duda ya ha sido preguntada antes en primer lugar, y en caso de que no exista, no deberías nunca tener miedo de levantar la tuya propia. Si te da desconfianza, prueba molestar en los repositorios de tus amigos primero. Levantar un Issue es algo super común y esperado, y están ahí no para que critiquen un repositorio, sino para ayudarlos a mejorar.

== ¿Cuándo debería cerrar un Issue?

Cuando termine su relevancia. El caso más común es que este issue haya provocado que alguien quiera solucionarlo, y haya creado una nueva rama de trabajo, y levantado un pull request con la solución. Si el problema original que mencionaste fue resuelto, cierra tu issue!

Si el problema no fue resuelto correctamente, pero ya cerraste tu issue, tampoco hay problema. Las issues pueden ser re-abiertas si es que se nota que vuelven a ser relevantes.
