local Treesitter = {}

function Treesitter.setup(use)
    use { "nvim-treesitter/nvim-treesitter" }
    require("nvim-treesitter.install").update({ with_sync = true })()

    vim.opt.runtimepath:append(vim.fn.stdpath "data" .. "/treesitter/parsers")
    require("nvim-treesitter.configs").setup {
        parser_install_dir = vim.fn.stdpath "data" .. "/treesitter/parsers",
        ensure_installed = { "c", "cpp", "cmake", "markdown", "markdown_inline", "zig" },
        sync_install = true,
        auto_install = false,
        highlight = {
            enable = true,
            additional_vim_regex_higlighting = false,
        },
        incremental_selection = {
            enable = false,
        },
        indent = {
            enable = false,
        },
    }
end

return Treesitter
