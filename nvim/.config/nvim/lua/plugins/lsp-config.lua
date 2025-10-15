return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"cssls",
					"bashls",
					"rust_analyzer"
				}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local cmp_nvim_lsp = require("cmp_nvim_lsp")
			local capabilities = vim.tbl_deep_extend(
				"force",
				{},
				vim.lsp.protocol.make_client_capabilities(),
				cmp_nvim_lsp.default_capabilities()
			)

			vim.lsp.config("lua_ls", {
				capabilities = capabilities
			})

			vim.lsp.config("ts_ls", {
				capabilities = capabilities
			})

			vim.lsp.config("html", {
				capabilities = capabilities
			})

			vim.lsp.config("cssls", {
				capabilities = capabilities
			})

			vim.lsp.config("bashls", {
				capabilities = capabilities
			})

			vim.lsp.config("rust_analyzer", {
				capabilities = capabilities
			})

			vim.lsp.enable({
				"lua_ls",
				"ts_ls",
				"html",
				"cssls",
				"bashls",
				"rust_analyzer"
			})

			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover({ border = "rounded" })
			end, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
			--[[vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
			vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})]]--
		end,
	},
}
