local Homescreen = {}

function Homescreen.setup(use)
    use {
        "goolord/alpha-nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    }

    local dashboard = require("alpha.themes.dashboard")
    dashboard.section.header.val = require("plugins.homescreen.logos")[1]

    dashboard.section.buttons.val = {
        dashboard.button("e", " " .. " New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("f f", " " .. " Find file", ":Files<CR>"),
        dashboard.button("f r", " " .. " Recent files", ":History<CR>"),
        dashboard.button("f g", " " .. " Find text", ":Rg<CR>"),
        dashboard.button("s", " " .. " Studio projects", ":cd S:\\<CR>"),
        dashboard.button("r", " " .. " Git repos", ":cd R:\\<CR>"),
        dashboard.button("p", "󰙃 " .. " Personal projects", ":cd P:\\<CR>"),
        dashboard.button("q", " " .. " Quit", ":qa<CR>"),
    }

    for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = "AlphaButtons"
        button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.opts.layout[1].val = 0

    require("alpha").setup(dashboard.opts)

end

return Homescreen
