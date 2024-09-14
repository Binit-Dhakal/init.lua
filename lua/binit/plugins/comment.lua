return {
  'numToStr/Comment.nvim',
  opts = {
    toggler = {
      line = ' /',
      block = 'cbb'
    },
    opleader = {
      line = '//',
      block = 'cb'
    },
    extra = {
      -- Add comment on the line above
      above = '/k',
      -- Add comment on the line below
      below = '/j',
      -- Add comment on end of line
      eol = '/l'
    }
  }
}
