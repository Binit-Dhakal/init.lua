vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath
  }
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "binit.plugins" }, { import = "binit.plugins.lsp" }, { import = "binit.customs" } }, {
  install = {
    colorscheme = { "nightfly" },
  },
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})


-- require('lazy').setup({
--
--     -- Git related plugins
--     'tpope/vim-fugitive',
--     'tpope/vim-rhubarb',
--
--     -- Detect tabstop and shiftwidth automatically
--     'tpope/vim-sleuth',
--
--     -- Now plugins related to LSPs
--     {
--         'neovim/nvim-lspconfig',
--         dependencies={
--             {'williamboman/mason.nvim', config=true},
--             'williamboman/mason-lspconfig.nvim',
--
--             {'j-hui/fidget.nvim', opts={}},
--             'folke/neodev.nvim'
--         },
--         config=function()
--           require("mason").setup()
--           require("mason-lspconfig").setup({
--             ensure_installed={
--               'lua_ls', 'ruff_lsp','tsserver'
--             }
--           })
--         end
--
--     },
--
--     {
--         'folke/which-key.nvim', opts={}
--     },
--
--
--
--   {
--     'nvim-lualine/lualine.nvim',
--     opts={
--       options={
--         icons_enabled=false,
--         theme='onedark',
--         component_separators = '|',
--         section_separators = ''
--       }
--     }
--   },
--
--   {
--     -- Add indentation guides even on blank lines
--     'lukas-reineke/indent-blankline.nvim',
--     main='ibl',
--     opts={}
--   },
--
--
--
--   --
--   ,
--
--


--
-- }, {})
--
