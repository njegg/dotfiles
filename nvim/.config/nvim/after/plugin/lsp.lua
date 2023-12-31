local lsp = require("lsp-zero")

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "ge", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>c", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)

    vim.keymap.set("n", "<F2>", function() vim.lsp.buf.rename() end, opts)
end)

lsp.setup()

local cmp = require('cmp')
local cmp_select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select_opts),
        ['<C-n>'] = cmp.mapping(function()
            if cmp.visible() then
                cmp.select_next_item(cmp_select_opts)
            else
                cmp.complete()
            end
        end),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete(),
    },
    sources = {
        {name = 'path'},
        {name = 'nvim_lsp'},
        {name = 'buffer'},
    },
    snippet = {
        expand = function (args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert',
    },
    window = {
        documentation = {
            max_height = 15,
            max_width = 60,
        }
    },
    formatting = {
        fields = {'abbr', 'menu', 'kind'},
        format = function(entry, item)
            local short_name = {
                nvim_lsp = 'LSP',
                nvim_lua = 'nvim'
            }

            local menu_name = short_name[entry.source.name] or entry.source.name

            item.menu = string.format('[%s]', menu_name)
            return item
        end,
    },
})

