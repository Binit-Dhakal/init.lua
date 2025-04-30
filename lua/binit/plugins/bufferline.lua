return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  -- branch = "main",
  -- version = "*",
  -- event = "User FileOpened",

  diagnostics_indicator = function(count, level, diagnostics_dict, context)
    local icon = level:match("error") and " " or " "
    return " " .. icon .. count
  end,
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
