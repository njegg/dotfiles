local builtin = require('telescope.builtin')
local utils = require('telescope.utils')
local actions = require('telescope.actions')

_G.project_files = function()
    local _, ret, _ = utils.get_os_command_output({ 'git', 'rev-parse', '--is-inside-work-tree' })
    if ret == 0 then
        builtin.git_files()
    else
        builtin.find_files()
    end
end

vim.keymap.set('n', '<C-p>', '<cmd>lua project_files()<CR>', {noremap = true, silent = true})
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<C-e>', builtin.lsp_document_symbols , {})
vim.keymap.set('n', '<leader>gch', builtin.command_history , {})
vim.keymap.set('n', '<leader>gp', builtin.planets , {})

