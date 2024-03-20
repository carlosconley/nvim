local lsp = require('lsp-zero')


require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver',
		'clangd',
		'rust_analyzer',
		'eslint',
	},
	handlers = {
			lsp.default_setup,
			lua_ls = function ()
					require('lspconfig').lua_ls.setup({
							settings = {
									Lua = {
											diagnostics = {
													globals = {
															'vim',
													}
											}
									}
							}
					})
			end,
	},
})

--require('lspconfig').clangd.setup({})
--require('lspconfig').rust_analyzer.setup({})
-- Use lsps manaaged by the system, don't auto-install
require('lspconfig').zls.setup({})
require('lspconfig').gleam.setup({})
require('lspconfig').pylsp.setup({})


local cmp = require('cmp')
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- Trigger completion on ctrl-space
		["<C-Space>"] = cmp.mapping.complete(),
	})
})


lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
	local opts = {buffer = bufnr, remap = false}
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
	vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)





