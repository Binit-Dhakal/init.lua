return {
  'stevearc/conform.nvim',
  opts = {},

  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        javascript = { 'prettierd', 'prettier' },
        typescript = { 'prettierd', 'prettier' },
        javascriptreact = { 'prettierd', 'prettier' },
        typescriptreact = { 'prettierd', 'prettier' },
        python = { 'ruff' },
        html = { 'prettierd', 'prettier' },
        htmldjango = { 'djlint' },
        go = { 'goimports-reviser', 'gofumpt' }
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
