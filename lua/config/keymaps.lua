local keymap = vim.keymap.set

-- Helpful shortcuts
keymap("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
keymap("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })
keymap("n", "<leader>w", "<cmd>w!<cr>", { desc = "Write current buffer" })
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit current buffer" })
keymap("n", "<leader>x", "<cmd>x<cr>", { desc = "Write then quit current buffer" })
keymap("n", "<leader>sv", "<cmd>vsp<cr>", { desc = "Create split to the right" })
keymap("n", "<leader>sh", "<cmd>sp<cr>", { desc = "Create split below" })
keymap("n", "<leader><cr>", "<cmd>nohlsearch<cr>", { desc = "Deactivate search highlights" })

keymap("v", "p", '"_dP', { desc = "Paste without yanking highlighted text" })
keymap("v", "<", "<gv", { desc = "Outdent block" })
keymap("v", ">", ">gv", { desc = "Indent block" })
keymap("n", "<leader>ss", "<cmd>setlocal spell!<cr><cmd>set linebreak!<cr>", { desc = "Toggle prose mode" })
keymap("n", "<leader>pad", "<cmd>e ~\\Documents\\pad.txt<cr>", { desc = "Open text pad" })

-- Window navigation & interaction
keymap("n", "<C-S-j>", "<cmd>resize +2<CR>", { desc = "Make window taller" })
keymap("n", "<C-S-k>", "<cmd>resize -2<CR>", { desc = "Make window shorter" })
keymap("n", "<C-S-h>", "<cmd>vertical resize -2<CR>", { desc = "Make window thinner" })
keymap("n", "<C-S-l>", "<cmd>vertical resize +2<CR>", { desc = "Make window wider" })
keymap("n", "<C-j>", "<C-W>j", { desc = "Focus window below" })
keymap("n", "<C-h>", "<C-W>h", { desc = "Focus window left" })
keymap("n", "<C-k>", "<C-W>k", { desc = "Focus window above" })
keymap("n", "<C-l>", "<C-W>l", { desc = "Focus window right" })

-- Code interaction
keymap("n", "<leader>eo", vim.diagnostic.open_float, { desc = "Open error popup" })
keymap("n", "<leader>en", vim.diagnostic.goto_next, { desc = "Go to next error" })
keymap("n", "<leader>ep", vim.diagnostic.goto_prev, { desc = "Go to previous error "})
keymap("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line up" })
keymap("v", "<A-j>", ":m '>.+1<CR>gv=gv", { desc = "Move line up" })
keymap("i", "<A-j>", "<ESC>:m .+1<CR>==gi", { desc = "Move line up" })
keymap("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line down" })
keymap("v", "<A-k>", ":m '>.-2<CR>gv=gv", { desc = "Move line down" })
keymap("i", "<A-k>", "<ESC>:m .-2<CR>==gi", { desc = "Move line down" })

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(event)
        vim.bo[event.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

        local opts = { buffer = event.buf }
        keymap("n", "<leader>ct", vim.lsp.buf.type_definition, opts)
        keymap("n", "<leader>cD", vim.lsp.buf.declaration, opts)
        keymap("n", "<leader>cd", vim.lsp.buf.definition, opts)
        keymap("n", "<leader>ci", vim.lsp.buf.implementation, opts)
        keymap("n", "<leader>ch", vim.lsp.buf.hover, opts)
        keymap("n", "<leader>cu", vim.lsp.buf.references, opts)
        keymap("n", "<leader>ce", vim.lsp.buf.document_highlight, opts)

        keymap("n", "<leader>cs", vim.lsp.buf.signature_help, opts)
        keymap("n", "<leader>cr", vim.lsp.buf.rename, opts)
        keymap({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        keymap("n", "<leader>cf", function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

-- Build shortcuts
keymap("n", "<F6>", "<cmd>make build<cr>")
keymap("n", "<F7>", "<cmd>make check<cr>")
keymap("n", "<F8>", "<cmd>make clean<cr>")
keymap("n", "<F9>", "<cmd>make configure<cr>")

-- File searching & interaction
keymap("n", "<leader>fg", "<cmd>Rg<cr>", { desc = "Start fuzzy finding content in files" })
keymap("n", "<leader>ff", "<cmd>Files<cr>", { desc = "Start fuzzy finding files by name" })
keymap("n", "<leader>fb", "<cmd>Buffers<cr>", { desc = "Start fuzzy finding buffers" })
keymap("n", "<leader>fr", "<cmd>History<cr>", { desc = "Start fuzzy finding recent files" })
keymap("n", "<leader>fcd", ":cd ")
keymap("n", "<leader>fo", "<cmd>e .<cr>", { desc = "Start fuzzy finding files by name" })
