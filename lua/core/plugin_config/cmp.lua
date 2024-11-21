local cmp = require('cmp')
local opts = {
  sources = cmp.config.sources {
    { name = "nvim_lsp" },
    { name = "buffer"},
    { name = "path" },
  },
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true })
  }),
}
cmp.setup(opts)

mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<tab>"] = cmp.mapping(function(original)
        if cmp.visible() then
            cmp.select_next_item()
        else
            original()
        end
    end, {"i", "s"}),
    ["<S-tab>"] = cmp.mapping(function(original)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            original()
        end
    end, {"i", "s"}),
})
