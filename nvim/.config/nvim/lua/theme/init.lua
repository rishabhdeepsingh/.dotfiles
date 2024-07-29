--Set colorscheme (order is important here)
vim.o.termguicolors = false
vim.cmd.colorscheme "catppuccin-frappe"

vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

require('lualine').setup {
  options = { theme = 'catppuccin-latte' },
}

-- Indent-blankline
vim.opt.list = true
--vim.opt.listchars:append "space:⋅"
--vim.opt.listchars:append "eol:↴"

