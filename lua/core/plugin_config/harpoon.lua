local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<Space>a", mark.add_file)
vim.keymap.set("n", "<c-e>", ui.toggle_quick_menu)
