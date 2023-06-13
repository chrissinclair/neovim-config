local Statusbar =  { }

function Statusbar.setup(use)
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true, },
    }

    require("lualine").setup {
         sections = {
             lualine_a = { "mode" },
             lualine_b = { "filename" },
             lualine_c = {},
             lualine_x = {},
             lualine_y = { "location" },
             lualine_z = { "progress" },
         },
         options = {
            component_separators = { left = " ", right = " " },
            section_separators = { left = " ", right = " " },
         }
    }

end

return Statusbar
