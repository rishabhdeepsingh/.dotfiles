-- Telescope
local builtin = require('telescope.builtin')
require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
}

vim.keymap.set('n', '<leader><space>', builtin.buffers, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sb', builtin.current_buffer_fuzzy_find, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sh', builtin.help_tags, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>st', builtin.tags, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sg', builtin.grep_string, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>sp', builtin.live_grep, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>so', function()
  builtin.tags { only_current_buffer = true }
end, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>sf', function()
  builtin.find_files({ previewer = false })
end, { noremap = true, silent = true })


vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
