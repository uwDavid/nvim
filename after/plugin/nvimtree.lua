local api = require('nvim-tree.api')

vim.keymap.set("n", "<C-t>", api.tree.toggle)

-- Switch between window and editor
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

