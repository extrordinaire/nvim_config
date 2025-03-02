return {
  {
    "rmehri01/onenord.nvim",
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
      require("onenord").setup({
        -- Add any specific configuration options here
      })
      vim.cmd("colorscheme onenord")
    end,
  },
}

