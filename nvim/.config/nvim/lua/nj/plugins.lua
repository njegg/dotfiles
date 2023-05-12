return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'tpope/vim-fugitive'

    use 'mbbill/undotree'

    use 'nvim-lua/plenary.nvim'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', }
    use "moevis/smartjump.nvim"
    use 'ThePrimeagen/harpoon'

    use { 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} }
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            -- {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            -- {'rafamadriz/friendly-snippets'},
        },

        disable = false, --<<<<<<<<<<<
    }

    use 'AndrewRadev/tagalong.vim'
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup {} end
    }

    -- use 'ekickx/clipboard-image.nvim'
    -- use {'iamcco/markdown-preview.nvim', run = 'cd app & yarn install'}
    -- use 'godlygeek/tabular'
    use 'preservim/vim-markdown'

    use 'Shirk/vim-gas'
    use 'tikhomirov/vim-glsl'

    use {"shortcuts/no-neck-pain.nvim", tag = "*" }
    use 'eandrju/cellular-automaton.nvim'

    -- Icons
    use "nvim-tree/nvim-web-devicons"

    -- Status Line and Bufferline
    use "nvim-lualine/lualine.nvim"

    -- Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'rose-pine/neovim', as = 'rose-pine', }
    use 'Mofiqul/vscode.nvim'
    use 'morhetz/gruvbox'
    use 'folke/tokyonight.nvim'

    use 'andweeb/presence.nvim'
end)

