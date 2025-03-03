-- lua/plugins/transparency.lua

return {
  "xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup({
      enable = true, -- Enable transparency
      extra_groups = {
        -- Add groups to clear here
      },
      exclude = {}, -- Exclude specific groups
    })
  end,
}

