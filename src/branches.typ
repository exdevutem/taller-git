= Trabajar en paralelo

Durante el desarrollo de tu proyecto, es muy común que no puedas mantener una serie lineal de cambios por diversas razones. Quizás estás trabajando con mucha gente, quizás estás trabajando en un cambio muy grande, y otro cambio menor, pero más urgente, requiere que pauses este trabajo brevemente. Sea cual sea el motivo, esto puede traer diversos problemas al momento de commitear cambios a tu proyecto.

El caso más común de esto se da cuando dos desarrolladores contribuyen código a la misma rama. Uno comete y empuja sus cambios antes que el otro, y cuando el último intenta hacer lo mismo recibe un error bastante feo por parte de Git diciéndole que "pullee" los cambios más recientes antes de esto (ver @alvarito)

#figure(
  image("../assets/branches/alvarito.png"),
  caption: [Jovencito primer merge conflict],
) <alvarito>

== Branches / Ramas

La solución que Git (y múltiples otros gestores de version) han ideado es el concepto de ramas, en donde el flujo de cambios deja de ser lineal, sino que diverge en diversos puntos, y se reunifica en otros. Viendo este concepto explicado, lo más común es que encuentren diagramas como el que se ve en la @diagrama. En este diagrama, cada círculo contempla un commit, y cada color contempla una rama. En este caso, la rama principal va avanzando, y diverge primero en una pequeña rama `Little Feature`, y luego en otra rama más grande `Big Feature`.

#figure(
  image("../assets/branches/branch.svg"),
  caption: [Diagrama clásico sobre las ramas de un repositorio. #link("https://www.atlassian.com/git/tutorials/using-branches")[Fuente: Atlassian.]],
) <diagrama>

La ventaja de esto es que aisla el trabajo de cada desarrollador, librando de problemas como el visto en @alvarito, además de mantener una rama principal consistente y libre de código cuestionable. Puedes pensar en una rama como una forma de solicitarle al repositorio tu propia área de trabajo personal, donde no te webee nadie.

Para trabajar con estas ramas, los comandos más típicos que veras son:

```bash
# Listar todas las ramas
$ git branch
$ git branch --list

# Crea una rama "test", pero no hace "checkout"
$ git branch test

# Borra la rama "test"
$ git branch -d test # forma segura
$ git branch -D test # forma forzada

# Cambia el nombre de la rama actual
$ git branch -m popipo

# Lista las ramas del repositorio remoto
$ git branch -a
```

== Checkout

Estas ramas por si solas no hacen mucho si no cambias y trabajas en ellas. El acto de cambiar el commit actual sobre el que se está trabajando se llama "checkout", y el comando correspondiente puede actuar sobre tres entidades distintas; archivos, commits y ramas, y consta de cambiar la versión sobre la cual se está actuando en tal entidad.

El uso más común, sin embargo, es para navegar a través de las ramas del proyecto, y normalmente cuando uno habla de "hacer checkout", se refiere a cambiar de una rama a otra, y esto le dice a git que, primero cambie todos los archivos del directorio de trabajo para que estén al cambio más actual de la rama, y que guarde todos los commits futuros hacia esta rama, lo que hace que sea muy sencillo experimentar, al igual que trabajar en dos cosas al mismo tiempo.

El uso más común es:

```bash
# Considerando el siguiente espacio de trabajo:
$ git branch
  * main            # La rama de trabajo actual (denotada por el *)
    ft/nuevo_boton  # Una rama de feature (denotada por ft)
    fix/cookies     # Una rama hotfix (denotada por fix)

# Me cambio a trabajar en la rama "ft/nuevo_boton"
$ git checkout ft/nuevo_boton

# Creo una nueva rama, y le hago checkout
$ git checkout -b ft/validaciones             # A partir de HEAD (main)
$ git checkout -b ft/validaciones fix/cookies # A partir de fix/cookies
```
