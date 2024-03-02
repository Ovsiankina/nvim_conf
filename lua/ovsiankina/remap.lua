-- Remap <space> to execute the vim command :Ex while in NORMAL MODE
vim.g.mapleader = " "                        -- The leader ( <space> )
vim.keymap.set("n", "<leader>b", vim.cmd.Ex) -- in normal mode, leader <space>, which command (Ex)

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})

-- Neotree
vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal left<CR>", {})

-- LSP and code actions
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})       -- Definitions
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {}) -- Go to definitions
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})

-- None-ls
vim.keymap.set("n", "<space>fc", vim.lsp.buf.format, {})

---------- GIT ----------

-- Git signs
vim.keymap.set("n", "<space>gp", ":Gitsigns preview_hunk<CR>", {})

-- Vim fugitive
vim.keymap.set("n", "<space>gc", ":Git ", {})
