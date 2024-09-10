return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right", -- Set the neo-tree window to open on the right side
        },
      })
    end,
  },
}
