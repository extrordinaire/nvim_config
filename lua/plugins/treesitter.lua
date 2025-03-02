-- lua/plugins/treesitter.lua

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "lua", "javascript", "python", "rust" },
      highlight = { enable = true },
      indent = { enable = true },
      git = {
        enable = true, -- Show git status in the tree
      },
      renderer = {
          indent_markers = {
          enable = true,
        },
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
          },
        },
      },
    }
  end,
}
