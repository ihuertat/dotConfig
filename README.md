# dotConfig
archivos de configuración de mi sistema linux para Vim y Tmux

## Vim
contiene el archivo .vimrc así como la configuración de los plugins que utilizo.

Es necesario copiar el directorio plugin dentro del directorio .vim del usuario

## NodeJs y npm

```
  sudo apt install nodejs npm
```

Despues ejecutar 

```
  sudo npm i -g yarn
```
ir al directorio ` .vim/plugged/coc.nvim ` y ejecutar


```
  yarn install 
```

Una vez instalados los plugins ejecutar:

```
 :CocInstall coc-clangd
 :CocCommand clangd.install
```

