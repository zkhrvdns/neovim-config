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
        use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
        use {'nvim-lualine/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true}}

        -- Automatically set up your configuration after cloning packer.nvim
        -- Put this at the end after all plugins
        if packer_bootstrap then
            require('packer').sync()
        end
    end
)

-- Theme
require('plugins/one-nvim')
require('plugins/nvim-bufferline')
require('plugins/lualine-nvim')

return packer
