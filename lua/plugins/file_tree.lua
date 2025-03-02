-- lua/plugins/filetree.lua

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
  },
  config = function()
    -- Disable netrw (default file explorer) at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- Set termguicolors to enable highlight groups
    vim.opt.termguicolors = true

    -- Configure nvim-tree
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = {
        width = 30,
	side = "right",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = false, -- Show hidden files
      },
    })
  end,
}
