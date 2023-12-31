vim.opt.signcolumn = 'yes'

vim.opt.guicursor = ''
vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.so = 3
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.foldmethod = 'manual'
vim.opt.conceallevel = 2

vim.opt.updatetime = 50

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.mouse = 'a'

vim.opt.hlsearch = false
vim.opt.incsearch = true -- hl search while typing

vim.opt.nuw = 3

vim.g.netrw_keepdir = 1
vim.g.netrw_winsize = 20
vim.g.netrw_banner = 0

vim.g.vim_markdown_folding_disabled = 1

vim.g.laststatus = 3 -- Only one statusline

vim.opt.splitbelow = true

vim.cmd("iab amogus ඞ")

vim.opt.exrc = true
vim.opt.secure = true

vim.opt.ignorecase = true

vim.cmd("set formatoptions-=c")
vim.cmd("set formatoptions-=o") 
vim.cmd("set formatoptions-=r")

vim.cmd("set diffopt+=vertical")
