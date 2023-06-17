vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local indent = 4

if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.runtimepath:append("C:\\Users\\csinclair\\.vim_runtime")
    vim.opt.runtimepath:append("C:\\Users\\csinclair\\.vim")
else
    vim.opt.runtimepath:append("~/.vim_runtime")
    vim.opt.runtimepath:append("~/.vim")
end

vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true

vim.opt.autoread = true
vim.opt.history = 500

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.wildmenu = true
vim.opt.wildignorecase = true
vim.opt.wildignore:append("*.o")
vim.opt.wildignore:append("*.obj")
vim.opt.wildignore:append("*.dll")
vim.opt.wildignore:append("*.exe")
vim.opt.wildignore:append("*.pdb")
vim.opt.wildignore:append("*.so")
if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.wildignore:append(".git\\*")
    vim.opt.wildignore:append(".hg\\*")
    vim.opt.wildignore:append(".svn\\*")
else
    vim.opt.wildignore:append("*/.git/*")
    vim.opt.wildignore:append("*/.hg/*")
    vim.opt.wildignore:append("*/.svn/*")
    vim.opt.wildignore:append("*/.DS_Store")
end

vim.opt.ruler = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

vim.opt.list = true
vim.opt.listchars = "trail:#"

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.magic = true
vim.opt.lazyredraw = true

vim.opt.showmatch = true
vim.opt.mat = 2

vim.opt.cmdheight = 2
vim.opt.showmode = false

vim.opt.errorbells = false
vim.opt.visualbell = false

vim.opt.foldcolumn = "0"
vim.opt.foldmethod = "syntax"

vim.opt.encoding = "utf8"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.wb = false

vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = indent
vim.opt.tabstop = indent
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true

if vim.loop.os_uname().sysname == "Windows_NT" then
    vim.opt.undodir = "C:\\Users\\csinclair\\.vim_runtime\\temp_dirs\\undodir"
else
    vim.opt.undodir = "~/.vim_runtime/temp_dirs/undodir"
end
vim.opt.undofile = true

vim.opt.pumblend = 10
vim.opt.pumheight = 10
vim.opt.termguicolors = true

vim.g.markdown_fenced_languages = { "cpp", "c", "rust" }

vim.opt.errorformat:append("\\\\\\ %#%f(%l\\\\\\,%c):\\ %m")
vim.opt.errorformat:append("\\\\\\ %#%f(%l):\\ %m")
vim.opt.errorformat:append("\\\\\\ %#%f(%l\\\\\\,%c-%*[0-9]):\\ %#%t%[A-z]%#\\ %m")

vim.opt.guifont = "SauceCodePro NF Medium:h10:w57:i"
