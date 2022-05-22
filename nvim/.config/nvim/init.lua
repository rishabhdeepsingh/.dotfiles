-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)
-- autocmd VimEnter * NERDTree

local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'tpope/vim-rhubarb' -- Fugitive-companion to interact with github
  use 'tpope/vim-commentary' -- "gc" to comment visual regions/lines
  use 'ludovicchabant/vim-gutentags' -- Automatic tags management

  use 'dstein64/vim-startuptime'

  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  -- Lua
  use { "folke/which-key.nvim", config = function() require("which-key").setup {} end }

  -- UI to select things (files, grep results, open buffers...)
  use 'gruvbox-community/gruvbox'
  use 'ryanoasis/vim-devicons'
  use 'airblade/vim-current-search-match'
  use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use 'preservim/nerdtree'

  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'

  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }

  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/playground'

  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'williamboman/nvim-lsp-installer'
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/cmp-nvim-lsp'

  -- Languages
  use 'fatih/vim-go'
end)

vim.api.encoding = "UTF-8"
vim.g.webdevicons_enable = true

--Incremental live completion (note: this is now a default on master)
vim.o.inccommand = 'nosplit'

--Set highlight on search
vim.o.syntax = "on"
vim.o.hlsearch = true

vim.o.tabstop = 2
vim.o.shiftwidth = 2


--Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

--Do not save when switching buffers (note: this is now a default on master)
vim.o.hidden = true

--Enable mouse mode
vim.o.mouse = 'a'

--Enable break indent
vim.o.breakindent = true

--Save undo history
vim.opt.undofile = true

--Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

--Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

--Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Highlight on yank
vim.api.nvim_exec(
  [[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
  augroup end
]] ,
  false
)

--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false


require('theme')
require('whiteknife')


-- Make runtime files discoverable to the server
-- local runtime_path = vim.split(package.path, ';')
-- table.insert(runtime_path, 'lua/?.lua')
-- table.insert(runtime_path, 'lua/?/init.lua')
