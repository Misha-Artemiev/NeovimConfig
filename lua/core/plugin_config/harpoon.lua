local harpoon = require("harpoon")

harpoon:setup()

vim.keymap.set("n", "<Space>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<c-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<Space>1", function() harpoon:list():prev() end)
vim.keymap.set("n", "<Space>2", function() harpoon:list():next() end)
