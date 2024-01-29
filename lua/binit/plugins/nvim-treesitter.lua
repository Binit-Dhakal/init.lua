
return  {
    'nvim-treesitter/nvim-treesitter',
    dependencies={
      'nvim-treesitter/nvim-treesitter-textobjects'
    },
    event={ "BufReadPre", "BufNewFile" },
    build=':TSUpdate',
    config= function()
         treesitter = require("nvim-treesitter.configs")

        treesitter.setup{
          ensure_installed = { "lua", "python", "javascript", "typescript" },
          
          auto_install = true,

          highlight = {
            enable = true,
            use_languagetree = true,
          },
        incremental_selection = {
          enable=true,
          keymaps={
            init_selection='<c-space>',
            node_incremental='<c-space>',
            scope_incremental='<c-s>',
            node_decremental='<M-space>'
          }
        },
          indent = { enable = true },
        textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ['aa'] = '@parameter.outer',
          ['ia'] = '@parameter.inner',
          ['if'] = '@function.inner',
          ['af'] = '@function.outer',
          ['ac'] = '@class.outer',
          ['ic'] = '@class.inner',
        },
      },
      move = {
        enable = true,
        set_jumps = true, -- whether to set jumps in the jumplist
        goto_next_start = {
          [']m'] = '@function.outer',
          [']]'] = '@class.outer',
        },
        goto_next_end = {
          [']M'] = '@function.outer',
          [']['] = '@class.outer',
        },
        goto_previous_start = {
          ['[m'] = '@function.outer',
          ['[['] = '@class.outer',
        },
        goto_previous_end = {
          ['[M'] = '@function.outer',
          ['[]'] = '@class.outer',
        },
      },
      swap = {
        enable = true,
        swap_next = {
          ['<leader>a'] = '@parameter.inner',
        },
        swap_previous = {
          ['<leader>A'] = '@parameter.inner',
        },
      },
        }
        }
    end
}

