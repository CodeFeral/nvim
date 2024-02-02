-- checkhealth
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- clipboard
vim.o.clipboard = "unnamedplus" -- use system clipboard as default register

-- turn off swapfile
vim.opt.swapfile = false

-- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.number = true         -- show absolute line number on cursor (when relative number is on)
vim.opt.signcolumn = "yes"    -- show sign column

-- folding
vim.opt.foldmethod = "indent" -- folding method
vim.opt.foldlevel = 999       -- prevent automatic folding

-- tabs & identation
vim.opt.tabstop = 2       -- 2 spaces for tabs
vim.opt.shiftwidth = 2    -- 2 spaces for indent width
vim.opt.expandtab = true  -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom
