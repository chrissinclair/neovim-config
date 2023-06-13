local Mason = {}

function Mason.setup(use)
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate",
    }

    require("mason").setup()
    require("mason-registry").refresh()
end

return Mason
