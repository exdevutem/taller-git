= Post instalación
Se debe de configurar el usuario que va a utilizar git. Se recomienda hacerlo de forma global para tu computador personal (o usuario propio si utilizas los computadores del club), o configurarlos individualmente para cada repositorio si utilizas algun computador o usuario público. En la terminal, ingresa los siguientes comandos:

```bash
# Utilizando mis datos como ejemplo.
$ git config --global user.name "Rafael Morales"
$ git config --global user.email "rmorales@utem.cl"
```

Adicionalmente, y pensando que ya cuentes con una cuenta de github, se recomienda que agregues una llave de SSH para trabajar con github (en el caso de Linux/Mac), o que instales el ayudante de credenciales de Git para Windows.

// TODO: Explicar el proceso de SSH en Linux / Mac
