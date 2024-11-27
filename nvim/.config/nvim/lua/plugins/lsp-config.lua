return {
	{
		"williamboman/mason.nvim",
		opts = {}
		--[[config = function()
			require("mason").setup()
		end]]--
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"jdtls",
					"cssls"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require('cmp_nvim_lsp').default_capabilities()

			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})
			lspconfig.html.setup({
				capabilities = capabilities
			})
			require("java").setup({
				jdk = {
					auto_install = false
				}
			})
			lspconfig.jdtls.setup({
				capabilities = capabilities,
				settings = {
					java = {
						configuration = {
							runtimes = {
								{
									name = "JavaSE-23",
									path = "/usr/lib/jvm/jdk-23.0.1-oracle-x64",
									default = true,
								}
							}
						}
					}
				}
			})
			lspconfig.cssls.setup({
				capabilities = capabilities
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
		end
	}
}