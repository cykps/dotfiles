return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua", --Lua
        "ruff-lsp",
        "ruff",
        "pyright", -- Python
        "html-lsp",
        "css-lsp",
        "prettierd",
        "prettier", --web
        "typescript-language-server", --TypeScript
        "typos-lsp",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^4", --Recommended
    lazy = false, -- This plugin is already lazy
  },

  {
    "RaafatTurki/hex.nvim",
    lazy = true,
    cmd = "Hex",
    config = function()
      require("hex").setup()
    end,
  },

  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require "configs.nvim-tree"
    end,
  },
}
