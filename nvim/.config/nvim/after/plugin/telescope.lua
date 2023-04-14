local builtin = require('telescope.builtin')
local utils = require('telescope.utils')

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

-- vim.keymap.set('n', '<leader>fs', function()
--     builtin.grep_string({ search = vim.fn.input("grep > ") })
-- end)

vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
