require('whiteknife.lsp_installer')
-- require('whiteknife.telescope')
require('whiteknife.treesitter')
require('whiteknife.cmp')
require('whiteknife.bindings')

-- Telescope
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
