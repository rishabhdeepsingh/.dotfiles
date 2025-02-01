--Set colorscheme (order is important here)
vim.o.termguicolors = false
vim.cmd.colorscheme "catppuccin-frappe"

require('lualine').setup {
  options = { theme = 'catppuccin-latte' },
}

-- Indent-blankline
-- vim.opt.list = true
-- Space and new line character
-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

