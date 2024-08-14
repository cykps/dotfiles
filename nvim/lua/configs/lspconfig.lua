local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

-- python
lspconfig.pyright.setup {}
require("lspconfig").pyright.setup {
  settings = {
    python = {
      venvPath = ".",
      pythonPath = "./.venv/bin/python",
      analysis = {
        extraPaths = { "." },
      },
    },
  },
}

lspconfig.ruff_lsp.setup {
  init_options = {
    settings = {
      args = {},
    },
  },
}

--- lua
lspconfig.lua_ls.setup {}

--- typos
lspconfig.typos_lsp.setup {
  -- Logging level of the language server. Logs appear in :LspLog. Defaults to error.
  cmd_env = { RUST_LOG = "error" },
  init_options = {
    -- Custom config. Used together with any workspace config files, taking precedence for
    -- settings declared in both. Equivalent to the typos `--config` cli argument.
    config = "~/code/typos-lsp/crates/typos-lsp/tests/typos.toml",
    -- How typos are rendered in the editor, can be one of an Error, Warning, Info or Hint.
    -- Defaults to error.
    diagnosticSeverity = "Error",
  },
}

-- Enable debug logs for the LSP client. Recommended for debugging only.
-- vim.lsp.set_log_level("debug")
