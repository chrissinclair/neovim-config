require "config.options"

local ensure_packer = function()
    --- Install packer if not available
    local packer_path = vim.fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if not vim.loop.fs_stat(packer_path) then
        vim.fn.system {
            "git",
            "clone",
            "--depth",
            "1",
            "https://github.com/wbthomason/packer.nvim",
            packer_path,
        }
        vim.cmd [[packadd packer.nvim]]
        return true
    end

    return false
end

local bootstrapped_packer = ensure_packer()

require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    require("plugins").setup(use)

    if bootstrapped_packer then
        require("packer").sync()
    end

    require "config.keymaps"
    require "config.autocmds"
    require "config.colorscheme"
end)

