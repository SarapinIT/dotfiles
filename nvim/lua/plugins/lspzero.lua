return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    config = function()
        local cmp = require('cmp')
        local lspconfig = require('lspconfig')
        local lspzero = require('lsp-zero')

        lspzero.on_attach(function(_, bufnr)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover,
                { buffer = bufnr, silent = true, desc = ' hover' })
            vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format,
                { buffer = bufnr, silent = true, desc = ' format code' })
            vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename,
                { buffer = bufnr, silent = true, desc = ' rename' })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
                { buffer = bufnr, silent = true, desc = ' go to definition' })
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,
                { buffer = bufnr, silent = true, desc = ' go to implemetations' })
            vim.keymap.set('n', 'gr', vim.lsp.buf.references,
                { buffer = bufnr, silent = true, desc = ' go to references' })
            vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition,
                { buffer = bufnr, silent = true, desc = ' go to type definition' })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,
                { buffer = bufnr, silent = true, desc = ' code actions' })

            local ok, which_key = pcall(require, 'which-key')
            if ok then
                which_key.register {
                    ['<leader>c'] = { name = ' lsp', _ = 'which_key_ignore' },
                    ['<leader>r'] = { name = ' rename', _ = 'which_key_ignore' },
                }
            end
        end)
        lspzero.set_sign_icons({ error = '', hint = '', info = '', warn = '' })

        require('lsp_signature').setup({ hint_enable = false })
        require('mason').setup()
        require('mason-lspconfig').setup({
            handlers = {
                lspzero.default_setup,
                lua_ls = function()
                    lspconfig.lua_ls.setup(lspzero.nvim_lua_ls())
                end,
                omnisharp = function()
                    lspconfig.omnisharp.setup({
                        handlers = { ['textDocument/definition'] = require('omnisharp_extended').handler }
                    })
                end
            }
        })

        cmp.setup({
            mapping = { ['<cr>'] = cmp.mapping.confirm({ select = true }) }
        })

        vim.diagnostic.config({
            severity_sort = true,
            underline = false,
            update_in_insert = true
        })
    end,
    dependencies = {
        'Hoffs/omnisharp-extended-lsp.nvim',
        'L3MON4D3/LuaSnip',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-nvim-lua',
        'hrsh7th/cmp-path',
        'hrsh7th/nvim-cmp',
        'neovim/nvim-lspconfig',
        'rafamadriz/friendly-snippets',
        'ray-x/lsp_signature.nvim',
        'saadparwaiz1/cmp_luasnip',
        'williamboman/mason-lspconfig.nvim',
        'williamboman/mason.nvim'
    }
}
