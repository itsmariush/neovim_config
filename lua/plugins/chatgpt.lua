local home = vim.fn.expand("$HOME")
local plugin = {
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
                api_key_cmd = "cat ".. home .."/.config/nvim/secrets/chatgpt_api_token.txt"
            })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
return plugin
