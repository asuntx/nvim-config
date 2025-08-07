require("conform").setup({
  formatters_by_ft = {
    python = { "ruff_format" },
    javascript = { "biome" },
    typescript = { "biome" },
    javascriptreact = { "biome" },
    typescriptreact = { "biome" },
    json = { "biome" },
    lua = {"stylua"},
  },
  -- Optional: run on save
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 500,
  },
})

