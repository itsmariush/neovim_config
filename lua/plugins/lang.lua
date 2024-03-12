return {

  -- uncomment and add lsp servers with their config to servers below
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      inlay_hints = { enabled = vim.fn.has("nvim-0.10") },
      ---@type lspconfig.options
      servers = {
        -- sourcekit will be automatically installed with mason and loaded with lspconfig
        sourcekit = {},
        psalm = {},
        lua_ls = { enabled = false }, -- disable lua_ls to edit nvim config without crashing
      },
    },
  },

  -- uncomment and add tools to ensure_installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "marksman",
      },
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "",
          package_uninstalled = "✗",
        },
      },
    },
  },
  -- which key integration
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>dw"] = { name = "+widgets" },
      },
    },
  },

  -- core language specific extension modules
  { import = "lazyvim.plugins.extras.dap.nlua" },
  { import = "lazyvim.plugins.extras.lang.go" },
  { import = "lazyvim.plugins.extras.lang.json" },
  --{ import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- custom language specific extension modules
  -- { import = "plugins.extras.lang.java" },
  -- { import = "plugins.extras.lang.nodejs" },
}
