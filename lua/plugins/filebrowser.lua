local Nerdtree = {}

function Nerdtree.setup(use)
    use { "preservim/nerdtree" }

    vim.g.NERDTreeWinPos = "right"
    vim.NERDTreeShowHidden = 1
    vim.NERDTreeIgnore = { "\\.swp" }
    vim.g.NERDTreeWinSize = 35
end

return Nerdtree
