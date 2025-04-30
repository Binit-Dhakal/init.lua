return {
	"stevearc/aerial.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons"
	},
	config = function()
		local aerial = require("aerial")
		aerial.setup({
			min_width = 35,
			max_width = 50,
			highlight_on_jump = 0,
			close_on_select = true,
			show_guides = true,
		})
		vim.keymap.set("n", "<Leader>2", "<Cmd>AerialToggle<Cr>")
	end
}
