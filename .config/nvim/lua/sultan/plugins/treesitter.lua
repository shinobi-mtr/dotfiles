return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"c", "lua", "vim", "vimdoc", "query", "markdown",
				"markdown_inline", "go", "javascript", "typescript",
				"json", "dockerfile", "yaml", "html", "css", "bash"
			},
			ignore_install = {},
			modules={},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false
			},
		})
	end
}

