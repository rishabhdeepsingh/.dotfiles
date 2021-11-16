--Set colorscheme (order is important here)
vim.o.termguicolors = true
vim.cmd 'colorscheme material'
vim.g.material_style = "deep ocean"
require('material').setup{
	contrast = true, -- Enable contrast for sidebars, floating windows and popup menus like Nvim-Tree
	borders = false, -- Enable borders between verticaly split windows
	popup_menu = "colorful", -- Popup menu style ( can be: 'dark', 'light', 'colorful' or 'stealth' )
	italics = {
		comments = true, -- Enable italic comments
		keywords = false, -- Enable italic keywords
		functions = false, -- Enable italic functions
		strings = false, -- Enable italic strings
		variables = false -- Enable italic variables
	},
	text_contrast = {
		lighter = true, -- Enable higher contrast text for lighter style
		darker = true -- Enable higher contrast text for darker style
	},
	custom_highlights = {
		CursorLine = '#0000FF',
		LineNr = '#FF0000'
	}
}
vim.api.nvim_set_keymap('n', '<leader>mm', [[<Cmd>lua require('material.functions').toggle_style()<CR>]], { noremap = true, silent = true })

require('lualine').setup{
    options = { theme = 'material-nvim'},
}
