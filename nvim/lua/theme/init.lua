--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.g.onedark_style = 'darker'
vim.g.onedark_dark_sidebar = false
require('onedark').setup{}

require('lualine').setup{
    options = { theme = 'onedark'},
}