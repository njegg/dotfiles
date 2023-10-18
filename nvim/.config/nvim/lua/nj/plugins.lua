return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'tpope/vim-fugitive'

  use 'airblade/vim-gitgutter'

  use 'mbbill/undotree'

  use 'nvim-lua/plenary.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }
  use 'ThePrimeagen/harpoon'
  use 'junegunn/fzf.vim'

  use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-buffer'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  use {
      'nvim-tree/nvim-tree.lua',
      requires = {
          'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  use "folke/todo-comments.nvim"

  use 'stevearc/oil.nvim'

  use 'AndrewRadev/tagalong.vim'

  use 'ekickx/clipboard-image.nvim'
  use 'preservim/vim-markdown'

  use 'Shirk/vim-gas'
  use 'tikhomirov/vim-glsl'

  use {"shortcuts/no-neck-pain.nvim", tag = "*" }
  use 'eandrju/cellular-automaton.nvim'

  -- Icons
  use "nvim-tree/nvim-web-devicons"

  -- Status Line and Bufferline
  use "nvim-lualine/lualine.nvim"

  use "junegunn/goyo.vim"

  -- Themes
  use { "catppuccin/nvim", as = "catppuccin" }
  use { 'rose-pine/neovim', as = 'rose-pine', }
  use 'Mofiqul/vscode.nvim'
  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'

  use 'andweeb/presence.nvim'

  use 'uga-rosa/utf8.nvim'
  
  -- use 'github/copilot.vim'
end)

