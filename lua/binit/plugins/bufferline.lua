return {
  "akinsho/bufferline.nvim",
  branch = "main",
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
