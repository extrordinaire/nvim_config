return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = [[<leader>t]], -- Press <leader> + t to toggle terminal
        hide_numbers = true, -- Hide line numbers in terminal buffers
        shade_terminals = true, -- Dim inactive terminals
        shading_factor = 2, -- Degree of dimming
        start_in_insert = true, -- Open terminal in insert mode
        persist_size = true, -- Retain terminal size when toggled
        direction = "horizontal", -- Choose "float", "horizontal", "vertical", or "tab"
        close_on_exit = true, -- Close terminal when process exits
        shell = vim.o.shell, -- Use default shell
      })
    end,
  },
}

