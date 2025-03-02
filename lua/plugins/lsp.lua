-- lua/plugins/lsp.lua

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("lspconfig").lua_ls.setup {}
      require("lspconfig").pyright.setup {}
      require("lspconfig").rust_analyzer.setup {}
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "pyright", "rust_analyzer" }
      }
    end,
  },
}
