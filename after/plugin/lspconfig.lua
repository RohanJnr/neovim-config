local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup({
	capabilities = capabilities
})
lspconfig.tsserver.setup({
	capabilities = capabilities
})
lspconfig.tailwindcss.setup({
	capabilities = capabilities
})
lspconfig.pylsp.setup({
    capabilities = capabilities
})

lspconfig.kotlin_language_server.setup({
    capabilities = capabilities
})


vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})


