vim.cmd("set autoindent")
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set scrolloff=10")

vim.g.mapleader = " "

vim.cmd("set number")

vim.opt.relativenumber = true

-- System clipboard copy/paste
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>yy", '"+yy')
vim.keymap.set("n", "<leader>p", '"+p')

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Spell checking
vim.opt.spell = false
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	callback = function()
		vim.opt.spell = true
		vim.opt.spelllang = "en_us"
	end
})

vim.diagnostic.config {
	signs = true,
	underline = true,
	virtual_text = true,
	virtual_lines = false,
	update_in_insert = true,
	float = {
		header = false,
		border = "rounded",
		focusable = false,
	}
}
