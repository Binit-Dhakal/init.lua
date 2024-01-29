vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
vim.opt.mouse = 'a'   -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab = true

-- UIConfig
vim.opt.number=true -- show absolute number
vim.opt.relativenumber = true -- add number to each line on left side
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright=true
vim.opt.showmode=true


-- Searching
vim.opt.incsearch = true  	-- search as characters are entered
vim.opt.hlsearch = false  	-- donot highlight matches
vim.opt.ignorecase = true	-- ignore case in searches by default
vim.opt.smartcase = true        -- but make it case sensitive if uppercase is entered
