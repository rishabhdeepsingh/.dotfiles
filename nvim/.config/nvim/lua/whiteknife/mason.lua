require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        -- LSPs
        "bashls", "clangd", "lua_ls", "pyright", "lua_ls", "rust_analyzer"
        -- Linters
        -- "cmakelint", "buf", "cpplint",
        -- formatters
        -- "autopep8", "clang-format", "cmakelang", "goimports", "jq",
        -- "luaformatter", "prettier"
    },
    automatic_installation = true
}

local on_attach = function(_, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>wa', vim.keymap.setvim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.keymap.setvim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<leader>D', vim.keymap.setvim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>rn', vim.keymap.setvim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.keymap.setvim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>ca', vim.keymap.setvim.lsp.buf.code_action, opts)
    -- vim.keymap.set('v', '<leader>ca', vim.keymap.setvim.lsp.buf.range_code_action, opts)
    vim.keymap.set('n', '<leader>e', vim.keymap.setvim.lsp.diagnostic.show_line_diagnostics, opts)
    vim.keymap.set('n', '[d', vim.keymap.setvim.lsp.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.keymap.setvim.lsp.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.keymap.setvim.lsp.diagnostic.set_loclist, opts)
    vim.keymap.set('n', '<leader>so', [[<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>]], opts)

    vim.keymap.set('n', '<leader>wl',
        function() vim.keymap.setprint(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)

    vim.cmd [[ command! Format execute 'lua vim.lsp.buf.formatting()' ]]
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

require("lspconfig")["pyright"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["cssls"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})

require("lspconfig")["clangd"].setup({
    on_attach = on_attach,
    capabilities = capabilities,
})
