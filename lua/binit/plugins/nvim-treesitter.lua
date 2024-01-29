
return  {
    'nvim-treesitter/nvim-treesitter',
    dependencies={
      'nvim-treesitter/nvim-treesitter-textobjects'
    },
    event={ "BufReadPre", "BufNewFile" },
    build=':TSUpdate',
    config= function()
         treesitter = require("nvim-treesitter")

        treesitter.setup{
          ensure_installed = { "lua", "python", "javascript", "typescript" },
          
          auto_install = true,

          highlight = {
            enable = true,
            use_languagetree = true,
          },

          indent = { enable = true }

        }
    end
}

