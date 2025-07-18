return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				no_italic = true,
				integrations = {
					neotree = true,
					mason = true,
					which_key = true,
					indent_blankline = {
						enabled = true,
						scope_color = "sky",
					}
				}
			})

			vim.cmd.colorscheme("catppuccin-mocha")
		end,
	},
}
