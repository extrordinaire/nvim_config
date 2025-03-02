-- lua/plugins/lsp.lua

return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      
      lspconfig.lua_ls.setup {}
      lspconfig.pyright.setup {}
      lspconfig.rust_analyzer.setup {}
      lspconfig.biome.setup {}
      lspconfig.clangd.setup {}
      lspconfig.zls.setup {
        cmd= {"zls"},
        filetypes = {"zig"},
      }

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
        ensure_installed = { "lua_ls", "pyright", "rust_analyzer", "biome", "clangd", "zls" }
      }
    end,
  },
}
