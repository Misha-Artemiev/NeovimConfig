vim.g.loadded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFileToggle<CR>")
