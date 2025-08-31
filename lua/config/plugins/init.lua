return {
	{ "lewis6991/gitsigns.nvim" },
	{ "numToStr/Comment.nvim" },
	{
		"vimpostor/vim-tpipeline",
		config = function()
			-- optional tweaks
			vim.g.tpipeline_cursormoved = 1 -- update on CursorMoved (more responsive)
		end,
	},

	{
		"gruvw/strudel.nvim",
		cmd = "StrudelLaunch",
		build = "npm install",
		config = function()
			require("strudel").setup({
				launch = {
					timeout = 30000,
				},
			})
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	{ "rose-pine/neovim", name = "rose-pine", transparency = true },
	{
		{
			"stevearc/oil.nvim",
			dependencies = { "nvim-tree/nvim-web-devicons" },
			config = function()
				require("oil").setup({
					columns = { "icon" },
					keymaps = {
						["<C-h>"] = false,
						["<M-h>"] = "actions.select_split",
					},
					view_options = {
						show_hidden = true,
					},
				})

				-- Open parent directory in current window
				vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })

				-- Open parent directory in floating window
				vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
			end,
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		-- or                              , branch = '0.1.x',
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-treesitter/nvim-treesitter", branch = "master", lazy = false, build = ":TSUpdate" },
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"mbbill/undotree",
	},
	{
		"tpope/vim-fugitive",
	},
	{
		"andweeb/presence.nvim",
	},
	{
		"stevearc/conform.nvim",
		opts = {},
	},
}
