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

<a name="links"></a>
## Links 

1. [Neovim](https://github.com/neovim/neovim)

2. [Neovim Documentation](https://neovim.io/doc/user/)

3. [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

4. [nvim-lua-guide](https://github.com/nanotee/nvim-lua-guide)
