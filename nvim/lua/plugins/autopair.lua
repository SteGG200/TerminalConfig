return {
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = { "hrsh7th/nvim-cmp" },
		config = function()
			require("nvim-autopairs").setup()

			local cmp = require("cmp")
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")

			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
		end,
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0",
		event = "VeryLazy",
		config = function()
			local surround = require("nvim-surround")
			surround.setup({
				keymaps = {
					-- [S]urround
					normal = "s",
					normal_cur = "ss",
					normal_line = "S",
					normal_cur_line = "SS",
					visual = "s",
					visual_line = "gs",
					-- [D]elete [S]urround
					delete = "ds",
					-- [C]hange [S]urround
					change = "cs",
					change_line = "cS",
				},
			})
		end,
	},
}
