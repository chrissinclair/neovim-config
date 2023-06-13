--- Install packer if not available
local packer_path = vim.fn.stdpath "data" .. "/packer/packer.nvim"
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
end
