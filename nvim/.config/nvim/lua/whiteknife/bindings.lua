local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }

-- Y yank until the end of line  (note: this is now a default on master)
map('n', 'Y', 'y$', opts)

map('n', '<leader>h', ':nohls<CR>', opts)
map('n', '<C-_>', ':Commentary<CR>', opts)

-- Set barbar's options
vim.g.bufferline = {
	auto_hide = false,
	-- Configure icons on the bufferline.
  icon_separator_active = '▎',
  icon_separator_inactive = '▎',
  icon_close_tab = '',
  icon_close_tab_modified = '●',
  icon_pinned = '車',
}
-- BARBAR
-- Move to previous/next
map('n', '<leader>,', ':BufferPrevious<CR>', opts)
map('n', '<leader>.', ':BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<leader><', ':BufferMovePrevious<CR>', opts)
map('n', '<leader>>', ' :BufferMoveNext<CR>', opts)
-- Goto buffr in position...
map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
map('n', '<leader>2', ':BufferGoto 2<CR>', opts)
map('n', '<leader>3', ':BufferGoto 3<CR>', opts)
map('n', '<leader>4', ':BufferGoto 4<CR>', opts)
map('n', '<leader>5', ':BufferGoto 5<CR>', opts)
map('n', '<leader>6', ':BufferGoto 6<CR>', opts)
map('n', '<leader>7', ':BufferGoto 7<CR>', opts)
map('n', '<leader>8', ':BufferGoto 8<CR>', opts)
map('n', '<leader>8', ':BufferGoto 9<CR>', opts)
map('n', '<leader>0', ':BufferLast<CR>', opts)
-- Close buffer
map('n', '<C-x>', ':BufferClose<CR>', opts)
-- BARBAR ~~~~

-- NerdTree
map('n', '<leader>N', ':NERDTreeToggle<CR>', opts)
map('n', '<leader>n', ':NERDTreeFocus<CR>', opts)


-- telescope
map('n', '<leader><space>', [[<cmd>lua require('telescope.builtin').buffers()<CR>]], { noremap = true, silent = true })
map('n', '<leader>sf', [[<cmd>lua require('telescope.builtin').find_files({previewer = false})<CR>]], opts)
map('n', '<leader>sb', [[<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>]], opts)
map('n', '<leader>sh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]], opts)
map('n', '<leader>st', [[<cmd>lua require('telescope.builtin').tags()<CR>]], opts)
map('n', '<leader>sg', [[<cmd>lua require('telescope.builtin').grep_string()<CR>]], opts)
map('n', '<leader>sp', [[<cmd>lua require('telescope.builtin').live_grep()<CR>]], opts)
map('n', '<leader>so', [[<cmd>lua require('telescope.builtin').tags{ only_current_buffer = true }<CR>]], opts)
map('n', '<leader>?', [[<cmd>lua require('telescope.builtin').oldfiles()<CR>]], opts)

