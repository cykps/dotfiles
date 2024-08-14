require("conform").setup {
  formatters_by_ft = {
    rust = { "rustfmt" },
    python = {
      -- To fix lint errors.
      "ruff_fix",
      -- To run the Ruff formatter.
      "ruff_format",
    },
    lua = { "stylua" },
    css = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
  },
}
