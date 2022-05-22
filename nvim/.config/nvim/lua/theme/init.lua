--Set colorscheme (order is important here)
vim.o.termguicolors = false
vim.cmd 'colorscheme gruvbox'

vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

require('lualine').setup {
  options = { theme = 'gruvbox_dark' },
}
