local Lsp = {}

function Lsp.setup(use)
    use {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    require("mason-lspconfig").setup {
        ensure_installed = { "clangd", "cmake", "marksman", "zls" },
    }
    local lspconfig = require("lspconfig")
    lspconfig.clangd.setup {
        settings = {
            cmd = { "clangd", "--header-insertion=never" },
        },
    }
    lspconfig.cmake.setup {}
    lspconfig.marksman.setup {}
    lspconfig.zls.setup {}
end

return Lsp
