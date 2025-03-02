require("config.key_bindings")
require("config.lazy")

vim.opt.number = true       -- Show absolute line number on the current line
vim.opt.relativenumber = true  -- Show relative line numbers

vim.opt.tabstop = 2        -- Number of spaces per tab
vim.opt.shiftwidth = 2     -- Indent size for << and >>
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 2    -- Number of spaces inserted when pressing Tab

vim.cmd [[
  highlight Normal guibg=none ctermbg=none
]]

