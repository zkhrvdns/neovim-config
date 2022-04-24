-- https://github.com/wbthomason/packer.nvim

-- Bootstrapping
local nvim_command = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    nvim_command 'packadd packer.nvim'
end

-- Automatically run :PackerCompile whenever plugins.lua is updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local packer = require('packer').startup(
    function(use)
        -- Theme
        use 'Th3Whit3Wolf/one-nvim'
        use 'kyazdani42/nvim-web-devicons'
        use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}
        use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

        -- Syntax
        use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

        -- File Explorer
        use {
            'kyazdani42/nvim-tree.lua',
            requires = {
                'kyazdani42/nvim-web-devicons',
            }
        }

        -- Fuzzy Finder
        use {'nvim-telescope/telescope.nvim', requires = {'nvim-lua/popup.nvim', 'nvim-lua/plenary.nvim'}}
        use 'nvim-telescope/telescope-media-files.nvim'
        use 'nvim-telescope/telescope-symbols.nvim'
        use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

        -- Autocomplete
        use 'hrsh7th/nvim-compe'
        use 'onsails/lspkind-nvim'

        -- LSP
        use 'neovim/nvim-lspconfig'
        use {
            'jose-elias-alvarez/nvim-lsp-ts-utils',
            requires = {
                'neovim/nvim-lspconfig',
                'nvim-lua/plenary.nvim',
                'jose-elias-alvarez/null-ls.nvim',
            },
        }
        use 'glepnir/lspsaga.nvim'
        use 'nanotee/sqls.nvim'

        -- Editing support
        use 'windwp/nvim-ts-autotag'
        use 'jiangmiao/auto-pairs'
        use 'norcalli/nvim-colorizer.lua'

        -- Comment
        use 'b3nj5m1n/kommentary'
        use 'JoosepAlviste/nvim-ts-context-commentstring'

        -- Formatter
        use 'mhartington/formatter.nvim'

        -- Git
        use 'tpope/vim-fugitive'
        use {'tanvirtin/vgit.nvim', requires = {'nvim-lua/plenary.nvim'}}
        use 'ttys3/nvim-blamer.lua'

        -- Debug
        use 'mfussenegger/nvim-dap'

        -- AutoSave
        use '907th/vim-auto-save'

        -- Markdown
        use 'davidgranstrom/nvim-markdown-preview'

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end
)

-- Theme
require('plugins/one-nvim')
require('plugins/bufferline')
require('plugins/lualine-nvim')

-- Syntax
require'plugins/nvim-treesitter'

-- File Explorer
require'plugins/nvim-tree'

-- Fuzzy Finder
require'plugins/telescope'

-- Autocomplete
require'plugins/nvim-compe'
require'plugins/lspkind-nvim'

-- Native LSP
require'plugins/lspsaga'

-- Editing support
require'plugins/nvim-ts-autotag'
require'plugins/auto-pairs'
require'plugins/nvim-colorizer'

-- Comment
require'plugins/kommentary'
require'plugins/nvim-ts-context-commentstring'

-- Formatter
require'plugins/formatter'

-- Git
require'plugins/vim-fugitive'
require'plugins/vgit'
require'plugins/nvim-blamer'

-- Debug
require'plugins/nvim-dap'

-- AutoSave
require'plugins/vim-auto-save'

-- Markdown
require'plugins/nvim-markdown-preview'

return packer
