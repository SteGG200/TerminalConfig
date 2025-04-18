return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = false,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_hidden = false,
					hide_by_name = {
						".git",
					},
				},
			},
		})
		vim.keymap.set(
			"n",
			"<leader>e",
			":Neotree filesystem reveal left reveal_force_cwd<CR>",
			{ silent = true, desc = "Open neotree directory" }
		)
		vim.keymap.set("n", "<leader>b", ":Neotree close<CR>", { silent = true, desc = "Close neotree" })
		vim.keymap.set("n", "<leader>g", ":Neotree float git_status<cr>", { silent = true, desc = "Open neotree git" })
	end,
}
