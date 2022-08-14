-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- url: https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README:
-- neovim-lua/README.md
-- https://github.com/brainfucksec/neovim-lua#readme


-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path
  })
end

-- Autocommand that reloads neovim whenever you save the packer_init.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  return
end

-- Install plugins
return packer.startup(function(use)
  -- Add you plugins here:
  use 'wbthomason/packer.nvim' -- packer can manage itself

  -- Autopair
  use 'windwp/nvim-autopairs'

  -- Treesitter interface
  use 'nvim-treesitter/nvim-treesitter'

  -- Color schemes & icons
  use 'dracula/vim'
  use 'marko-cerovac/material.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- LSP
  use 'neovim/nvim-lspconfig'

  -- Utils
  use 'nvim-lua/plenary.nvim'

  -- Git helpers
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  -- Navigation
	use 'nvim-telescope/telescope.nvim'
  use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'folke/which-key.nvim'

  use {
    'phaazon/hop.nvim',
    event = "BufRead",
    config = function()
      require("hop").setup {
        keys = 'etovxqpdygfblzhckisuran',
      }
    end
  }

  use 'kyazdani42/nvim-tree.lua'

  use 'akinsho/bufferline.nvim'

  -- Autocomplete (and its deps)
  use 'L3MON4D3/LuaSnip'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-buffer'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/nvim-cmp'

  -- Coding helpers
  use 'numToStr/Comment.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
