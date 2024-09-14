return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  -- branch = "main",
  -- version = "*",
  -- event = "User FileOpened",


  config = function()
    local bufferline = require("bufferline")
    -- local icons = require("binit.icons")

    bufferline.setup({
      -- options = {
      --   hover = {
      --     enabled = true,
      --     delay = 150,
      --     reveal = { 'close' }
      --   }
      -- }
    })
  end,
}
