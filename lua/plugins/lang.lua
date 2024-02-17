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
  {
    "simrat39/rust-tools.nvim",
    opts = {
      tools = {
        inlay_hints = {
          -- automatically set inlay hints (type hints)
          -- default: true
          auto = true,

          -- Only show inlay hints for the current line
          only_current_line = false,

          -- whether to show parameter hints with the inlay hints or not
          -- default: true
          show_parameter_hints = true,

          -- prefix for parameter hints
          -- default: "<-"
          parameter_hints_prefix = "<- ",

          -- prefix for all the other hints (type, chaining)
          -- default: "=>"
          other_hints_prefix = "=> ",

          -- whether to align to the length of the longest line in the file
          max_len_align = false,

          -- padding from the left if max_len_align is true
          max_len_align_padding = 1,

          -- whether to align to the extreme right or not
          right_align = false,

          -- padding from the right if right_align is true
          right_align_padding = 7,

          -- The color of the hints
          highlight = "Comment",
        },
      },
      server = {
        -- standalone file support
        -- setting it to false may improve startup time
        standalone = true,
      }, -- rust-analyzer options
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
  { import = "lazyvim.plugins.extras.lang.rust" },
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- custom language specific extension modules
  -- { import = "plugins.extras.lang.java" },
  -- { import = "plugins.extras.lang.nodejs" },
}
