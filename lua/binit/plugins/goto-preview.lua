return {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup { default_mappings = true }
    vim.keymap.set("n", "gC", "<cmd>lua require('goto-preview').close_all_win()<CR>", { noremap = true })
  end
}
