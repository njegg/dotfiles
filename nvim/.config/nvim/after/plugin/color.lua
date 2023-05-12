local colorscheme = 
    -- "rose-pine"
    -- "gruvbox"
    -- "catppuccin-latte"
    "catppuccin-mocha"

vim.cmd.colorscheme(colorscheme)

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#696969" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none", fg = "#101010" })

vim.api.nvim_set_hl(0, "TelescopeBorder", {ctermbg=220})
vim.api.nvim_set_hl(0, "TelescopeNormal", {ctermbg=220})
vim.api.nvim_set_hl(0, "TelescopeSelection", {ctermbg=220})
vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })

vim.opt.fillchars = { vert = ' ' } --, horiz = 'ඞ' }
-- vim.opt.fillchars = { vert = 'ඞ' } --, horiz = 'ඞ' }

