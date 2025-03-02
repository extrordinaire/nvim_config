-- lua/plugins/completion.lua

return {
  {
    "echasnovski/mini.completion",
    config = function()
      require("mini.completion").setup {
        lsp_completion = { enable = true }
      }
    end,
  },
}
