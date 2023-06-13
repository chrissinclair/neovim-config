local Fzf = {}

function Fzf.setup(use)
    use {
        "junegunn/fzf",
        run = ":call fzf#install()",
    }
    use { "junegunn/fzf.vim" }

    vim.g.fzf_preview_window = ''
end

return Fzf
