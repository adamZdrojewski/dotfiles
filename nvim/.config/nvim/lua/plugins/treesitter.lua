return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	lazy = false,
	--[[
	config = function()
		local configs = require("nvim-treesitter")
		configs.setup({
			ensure_installed = {"embedded_template"},
			auto_install = true,
			highlight = {enable = true},
			indent = {enable = true}
		})
	end
	--]]
}
