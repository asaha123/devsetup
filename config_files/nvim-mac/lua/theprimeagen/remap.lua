vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- paste stuff, but keep it in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- system clipboard stuff
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y") -- visual mode?
vim.keymap.set("n", "<leader>Y", "\"+Y") -- not sure what this is for
