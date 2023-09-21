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

En general, se recomienda "apretar siguiente" durante todo el proceso de instalación, pues los valores por defecto son perfectamente razonables para la gran mayoría de usuarios. El único valor que si les recomiendo cambiar es *el editor por defecto*, pues git opta por vim como opción. Lo que deberían usar ustedes, a menos de que se sientan cómodos con vim, es probablemente nano. De todas formas, la opción de editor se puede cambiar luego.
