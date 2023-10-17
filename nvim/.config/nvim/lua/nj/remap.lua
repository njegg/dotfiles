vim.cmd("map <space> <leader>")

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>")
vim.keymap.set("n", "<C-s>", ":w<Cr>")

-- replace word with buffer without overwriting it
vim.keymap.set("n", "<leader>v", "ciw<C-r>0<ESC>")

-- center cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")

-- copy pastj
vim.keymap.set("v", "<C-c>", '"+y')
vim.keymap.set("v", "<C-v>", 'c<ESC>"+p')
vim.keymap.set("i", "<C-v>", "<C-r><C-o>+")

vim.keymap.set("x", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>e", ":Oil<CR>")

vim.g.surround_98 = "<b>\r</b>"
-- vim.g.surround_98 = "**\r**"
vim.cmd("nmap <leader>b ysiwb")
vim.cmd("vmap <leader>b Sb")

-- epik move in v mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- reload config
vim.keymap.set("n", "<leader>r", ":so ~/.config/nvim/init.lua<CR>")

vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")

