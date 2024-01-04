local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.git_files , {noremap = true, silent = true})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>s', builtin.live_grep, {})
vim.keymap.set('n', '<leader>go', builtin.lsp_document_symbols , {})
vim.keymap.set('n', '<leader>gch', builtin.command_history , {})
vim.keymap.set('n', '<leader>gp', builtin.planets , {})

