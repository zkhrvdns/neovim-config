[![Neovim](https://raw.githubusercontent.com/neovim/neovim.github.io/master/logos/neovim-logo-300x87.png)](https://neovim.io)

## Contents

1. [Installation](#installation)

2. [Plugins](#plugins)

3. [LSP](#lsp)

4. [Links](#links)

<a name="installation"></a>
## Installation

### Install

1. Download appimage [NVIM v0.7.0](https://github.com/neovim/neovim/releases/tag/v0.7.0)

2. Rename it and set execution permission

   ```
   mv nvim.appimage nvim
   chmod u+x nvim
   ```

3. Place it in your PATH

   ```
   echo $PATH
   sudo mv nvim /usr/bin
   ```

### Optional dependencies

- xclip

   ```
   sudo apt update
   sudo apt install xclip
   ```

  See ```:help clipboard``` for details and options

<a name="plugins"></a>
## Plugins

### Icons

[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)

Dependencies:

- Nerd Font

   ```
   cp 'Hack Regular Nerd Font Complete.ttf' ~/.local/share/fonts
   ```

### Fuzzy Finder

[telescope](https://github.com/nvim-telescope/telescope.nvim)

[telescope-media-files](https://github.com/nvim-telescope/telescope-media-files.nvim)

Dependencies:

- [BurntSushi/ripgrep](https://github.com/BurntSushi/ripgrep) (finder)

   ```
   sudo apt install ripgrep
   ```

- [Ueberzug](https://github.com/seebye/ueberzug) (required for image support)

   ```
   sudo apt install python3-pip libxext-dev
   sudo pip3 install ueberzug
   ```

### Formatter

[formatter](https://github.com/mhartington/formatter.nvim)

Dependencies:

- [Prettier](https://github.com/prettier/prettier)

   ```
   npm install -g prettier
   ```

### Linter

[nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils)

Dependencies:

- [Eslint_d](https://github.com/mantoni/eslint_d.js)

   ```
   npm install -g eslint_d
   ```

### Markdown

[nvim-markdown-preview](https://github.com/davidgranstrom/nvim-markdown-preview)

Dependencies:

- [pandoc](https://pandoc.org/)

    ```
    sudo apt install pandoc
    ```

- [live-server](https://github.com/tapio/live-server)

    ```
    npm install -g live-server
    ```

<a name="lsp"></a>
## LSP 

### html

```
npm install -g vscode-html-languageserver-bin
```

### cssls

```
npm install -g vscode-css-languageserver-bin
```

### tsserver

```
npm install -g typescript typescript-language-server
```

### jdtls

1. Install [Language server for Java](https://github.com/eclipse/eclipse.jdt.ls)

2. (Optional) Move in directory '/opt'

   ```
   mv ~/Downloads/eclipse.jdt.ls /opt/eclipse.jdt.ls
   ```

3. Set environment variables

   ```
   whereis java
   java: /usr/bin/java /usr/share/java /usr/share/man/man1/java.1.gz
    
   ls -l /usr/bin/java
   lrwxrwxrwx 1 root root 22 мар 22 13:43 /usr/bin/java -> /etc/alternatives/java
    
   ls -l /etc/alternatives/java
   lrwxrwxrwx 1 root root 43 мар 22 13:43 /etc/alternatives/java -> /usr/lib/jvm/java-11-openjdk-amd64/bin/java
   ```

   ```
   nvim ~/.bashrc.
   . ~/.bashrc
   env | grep JAR
   ```

   ```
   # nvim
   export JAR=/opt/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/plugins/org.eclipse.equinox.launcher_1.6.100.v20201223-0822.jar
   export GRADLE_HOME=$HOME/snap/gradle
   export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
   export JDTLS_CONFIG=/opt/eclipse.jdt.ls/org.eclipse.jdt.ls.product/target/repository/config_linux
   export WORKSPACE=$HOME/workspace
   ```

### jsonls

```
npm install -g vscode-json-languageserver
```

### yamlls

```
npm install -g yaml-language-server
```

### bashls

```
npm install -g bash-language-server
```

### sqls

1. Install [sqls](https://github.com/lighttiger2505/sqls)

   ```
   sudo snap install go --classic
   go get github.com/lighttiger2505/sqls
   ```

2. Find sqls location. Required in settings.

   ```
   sudo find / -wholename '*/bin/sqls'
   ```

3. (Optional) Set configuration in file: ~/.config/sqls/config.yaml

   ```
   connections:
   - driver: postgresql
     dataSourceName: 'host=127.0.0.1 port=5432 user=postgres password=postgres dbname=postgres sslmode=disable'
   ```

### graphql

```
npm install -g graphql-language-service-cli
```

### dockerls

```
npm install -g dockerfile-language-server-nodejs
```

### sumneko_lua

1. Install [lua-language-server](https://github.com/sumneko/lua-language-server/wiki/Build-and-Run-(Standalone))

2. (Optional) Move in directory '/opt'

   ```
   mv ~/Downloads/lua-language-server /opt/lua-language-server
   ```

3. Make sure that the root and binary paths are pointing to the correct installation location

   ```
   local sumneko_root_path = '/opt/lua-language-server'
   local sumneko_binary = sumneko_root_path..'/bin/Linux/lua-language-server'
   ```

<a name="links"></a>
## Links 

1. [Neovim](https://github.com/neovim/neovim)

2. [Neovim Documentation](https://neovim.io/doc/user/)

3. [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

4. [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
