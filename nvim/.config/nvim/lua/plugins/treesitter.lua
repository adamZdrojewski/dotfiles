return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        --local config = require("nvim-treesitter.config")	Replace line above with this for Windows
        config.setup({
            ensure_installed = {"embedded_template"},
            auto_install = true,
            highlight = {enable = true},
            indent = {enable = true}
        })
    end
}
