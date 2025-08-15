-- Disable arrow keys in normal, insert, and visual modes
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
vim.o.guicursor = "n-v-c-sm-i-ci-ve-r-cr-o:ver25"
map({ "n", "i", "v" }, "<Up>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Down>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Left>", "<Nop>", opts)
map({ "n", "i", "v" }, "<Right>", "<Nop>", opts)
