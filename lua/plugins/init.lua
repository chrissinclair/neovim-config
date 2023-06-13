local Module = {}

function Module.setup(use)
    require("plugins.mason").setup(use)
    require("plugins.colorscheme").setup(use)
    require("plugins.homescreen").setup(use)
    require("plugins.treesitter").setup(use)
    require("plugins.lsp").setup(use)
    require("plugins.completion").setup(use)
    require("plugins.statusbar").setup(use)
    require("plugins.fuzzyfind").setup(use)
    require("plugins.filebrowser").setup(use)
    require("plugins.multicursors").setup(use)
    require("plugins.comments").setup(use)
end

return Module
