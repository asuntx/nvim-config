return {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000, lazy=false },
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
	{"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" }
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
}
