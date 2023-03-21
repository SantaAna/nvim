-- Set up nvim-cmp.
local cmp = require 'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            -- For `vsnip` user.
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-k>'] = cmp.mapping.select_prev_item(),
        ['<C-j>'] = cmp.mapping.select_next_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-n>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        }),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "vsnip" },
    },
    formatting = {
        format = require("lspkind").cmp_format({
            with_text = true,
            menu = {
                nvim_lsp = "[LSP]",
            },
        }),
    },
})

-- Set configuration for specific filetype.
--cmp.setup.filetype('gitcommit', {
--    sources = cmp.config.sources({
--        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
--    }, {
--        { name = 'buffer' },
--    })
--})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline({ '/', '?' }, {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = {
--        { name = 'buffer' }
--    }
--})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline(':', {
--    mapping = cmp.mapping.preset.cmdline(),
--    sources = cmp.config.sources({
--        { name = 'path' }
--    }, {
--        { name = 'cmdline' }
--    })
--})

-- Setup snippet loading
--require("luasnip.loaders.from_vscode").lazy_load()

-- Configure framework support for React
--require('luasnip').filetype_extend("javascript", { "javascriptreact" })
--require('luasnip').filetype_extend("javascript", { "html" })

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Elixir capability load
require('lspconfig')['elixirls'].setup {
    capabilities = capabilities
}

-- Lua capability load
require('lspconfig')['lua_ls'].setup {
    capabilities = capabilities
}

-- JS capability load
require('lspconfig')['tsserver'].setup {
    capabilities = capabilities
}
