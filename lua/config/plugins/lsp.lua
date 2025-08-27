return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"saghen/blink.cmp",
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			-- Standard servers configured with lspconfig
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ts_ls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.ruff.setup({})
			lspconfig.biome.setup({})

			-- Use native Neovim LSP API for the "ty" server
			vim.lsp.enable("ty")
		end,
	},
}
