-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- git
  -- use 'tpope/'

  -- nvim orgmode
  use {'nvim-orgmode/orgmode', config = function()
      require('orgmode').setup{}
    end
    }
  use {'nvim-tree/nvim-tree.lua'}
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
          requires = { {'nvim-lua/plenary.nvim'} }
        }
  use {'tpope/vim-fugitive'}

  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use { "ellisonleao/gruvbox.nvim" }

  use 'shaunsingh/nord.nvim'

  use 'ThePrimeagen/harpoon'

  use 'mbbill/undotree'

  use {
      'folke/trouble.nvim',
      requires = {
          'nvim-tree/nvim-web-devicons'
      }
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},     -- Required
	  {'hrsh7th/cmp-nvim-lsp'}, -- Required
	  {'L3MON4D3/LuaSnip'},     -- Required
  }
}
  use {
      'nvim-lualine/lualine.nvim',
       requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

end)
