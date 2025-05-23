return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope_builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", telescope_builtin.find_files, { desc = "Search files" })
			vim.keymap.set("n", "<leader>sk", telescope_builtin.keymaps, { desc = "[S]earch [K]eymap in vim" })
			vim.keymap.set(
				"n",
				"<leader>sw",
				telescope_builtin.live_grep,
				{ desc = "[S]earch key[W]ord in current root" }
			)
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						hijack_netrw = true,
					},
				},
			})

			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<leader>sf", "<cmd>Telescope file_browser<cr>", { silent = true ,desc = "[S]earch global [F]ile" })
		end,
	},
}
