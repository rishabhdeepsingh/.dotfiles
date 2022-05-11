require('whiteknife.lsp_installer')
-- require('whiteknife.telescope')
require('whiteknife.treesitter')
require('whiteknife.cmp')
require('whiteknife.bindings')
require('whiteknife.gitsigns')

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
