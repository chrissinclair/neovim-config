Neovim Config
=============

So I don't loose it from one random machine failing on me...


## Usage

1. Clone this to `%LOCALAPPDATA%\nvim`.
2. Run neovim-qt.exe

## Notes

This setup uses [Packer](https://github.com/wbthomason/packer.nvim) to pull dependencies, and
[Mason](https://github.com/williamboman/mason.nvim) to install LSP servers, which are installed
to `%LOCALAPPDATA%\nvim-data`.

## Key highlights

* LSP syntax highlighting, code navigation & completion. Focused on using `clangd` for C/C++.
* Treesitter syntax support for fallback highlighting & code folding.
* FZF fuzzy finding for files, buffers, recent files etc.
* Attempts to use the Nerd Fonts patched Source Code Pro (https://github.com/ryanoasis/nerd-fonts)
