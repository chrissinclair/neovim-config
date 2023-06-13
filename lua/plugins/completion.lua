local Cmp = {}

function Cmp.setup(use)
    use {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
    }

    local cmp = require "cmp"
    cmp.setup {
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
        }, {
            { name = "buffer" },
        }),
        mapping = cmp.mapping.preset.insert({
            ['<C-b>'] = cmp.mapping.scroll_docs(-4),
            ['<C-f>'] = cmp.mapping.scroll_docs(4),
            ['<C-Space>'] = cmp.mapping.complete(),
            ['<C-Esc>'] = cmp.mapping.abort(),
            ['<Tab>'] = cmp.mapping.confirm({ select = true }),
        })
    }

end

return Cmp
