local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
  "tpope/vim-surround",
  "tpope/vim-commentary",
  "tpope/vim-fugitive",

  "airblade/vim-gitgutter",

  "mbbill/undotree",

  "nvim-lua/plenary.nvim",
  { "nvim-telescope/telescope.nvim", tag = "0.1.x", },
  "ThePrimeagen/harpoon",
  "junegunn/fzf.vim",

  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

  -- LSP
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'williamboman/mason.nvim'},
  {'williamboman/mason-lspconfig.nvim'},

  -- Autocompletion
  {'hrsh7th/nvim-cmp'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'L3MON4D3/LuaSnip'},

  "folke/todo-comments.nvim",
  "stevearc/oil.nvim",
  "wsdjeg/vim-fetch",

  "AndrewRadev/tagalong.vim",

  "ekickx/clipboard-image.nvim",
  "preservim/vim-markdown",

  "Shirk/vim-gas",
  "tikhomirov/vim-glsl",

  {"shortcuts/no-neck-pain.nvim", tag = "*" },

  {
      "njegg/dvd.nvim",
      requires = {
          {"eandrju/cellular-automaton.nvim"},
          {"uga-rosa/utf8.nvim"}
      }
  },

  "nvim-lualine/lualine.nvim",

  -- Themes
  { "catppuccin/nvim", as = "catppuccin" },
  { "rose-pine/neovim", as = "rose-pine" },
  "morhetz/gruvbox",
  "folke/tokyonight.nvim",

  "nvim-tree/nvim-web-devicons",
  -- "nvim-tree/nvim-tree.lua",
  -- "andweeb/presence.nvim",
}

require("lazy").setup(plugins, {});
