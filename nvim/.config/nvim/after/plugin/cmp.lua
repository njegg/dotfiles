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
        {name = 'nvim_lsp'},
    },
    preselect = 'item',
    completion = {
        completeopt = 'menu,menuone,noinsert',
        autocomplete = false,
    },
      snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
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

