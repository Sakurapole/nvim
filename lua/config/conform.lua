require('conform').setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    --rust = { "clippy", lsp_format = "fallback" },
    javascript = { "prettier", stop_after_first = true },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_format = "fallback",
  }
})


