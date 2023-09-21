#import "@preview/big-todo:0.2.0": *

= Post instalación
Se debe de configurar el usuario que va a utilizar git. Se recomienda hacerlo de forma global para tu computador personal (o usuario propio si utilizas los computadores del club), o configurarlos individualmente para cada repositorio si utilizas algun computador o usuario público. En la terminal, ingresa los siguientes comandos:

```bash
# Utilizando mis datos como ejemplo.
$ git config --global user.name "Rafael Morales"
$ git config --global user.email "rmorales@utem.cl"
```

== Llaves de SSH en Linux, Mac y Windows

Adicionalmente, y pensando que ya cuentes con una cuenta de github, se recomienda que agregues una llave de SSH para trabajar con github. Existen otros métodos para trabajar HTTPS, pero los desconozco, y realmente pienso que el uso de SSH es más sencillo. Esto debería funcionar igual para todas las plataformas, *pensando que utilizes git bash* en windows. Si seguiste el proceso de instalación por defecto según se describió en @windows-install, deberías contar con un programa para SSH como parte del kit que se instala con git bash. Para el caso de Linux, SSH suele venir instalado en todas las distros, y para Mac, siempre viene instalado.

Esto puede hacerse desde la pantalla de configuración, en la sección de "Llaves SSH y GPG", según se ve en @settings y @ssh-keys. Los pasos para agregar una nueva llave SSH son los siguientes:

```bash
# Creo una nueva llave. Las configuraciones por defecto son
# lo suficientemente buenas para un PC personal.
$ ssh-keygen

# Obtengo la llave pública de mis credenciales SSH.
# Este output lo puedo 'pegar' en la sección de `New SSH key` en Github.
$ cat ~/.ssh/id_rsa.pub
```

#figure(
  image("../assets/post-install/1- Settings.png", width: 75%),
  caption: "Ubicación de la pantalla de configuración de Github",
) <settings>
#figure(
  image("../assets/post-install/2- keys.png"),
  caption: "Ubicación de la sección de llaves SSH y GPG",
) <ssh-keys>

Para propósitos de esta demostración, se ha creado una llave de SSH llamada "demo" en mi carpeta `~/.ssh` usando el comando provisto anteriormente, tal y como se ve en @demo. Acto seguido, se ha impreso la llave pública y obtenido el output visto en @cat. Finalmente, si se fuera a agregar esta llave, se haría siguiendo las instrucciones en @add. Por razones de no ser tonto, he decidido no agregar esta llave a mi cuenta de Github, lo siento!

#figure(
  image("../assets/post-install/3- Demo generacion.png", width: 75%),
  caption: "Generando una nueva llave",
) <demo>

#figure(
  image("../assets/post-install/4- Output cat dotpub.png", width: 75%),
  caption: "Obteniendo la llave pública",
) <cat>

#figure(
  image("../assets/post-install/5- agregando.png", width: 60%),
  caption: "Agregando la llave pública a Github.",
) <add>
