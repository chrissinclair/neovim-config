local Build = {}

function Build.setup(use)
    use { "neomake/neomake" }

    vim.g.neomake_open_list = 0
end

return Build
