local opt = vim.opt

-- checkhealth
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard as default register

-- turn off swapfile
opt.swapfile = false

-- line numbers
opt.relativenumber = false -- show relative line numbers
opt.number = false -- show absolute line number on cursor (when relative number is on)
opt.signcolumn = "yes" -- show sign column

-- folding
opt.foldmethod = "indent" -- folding method
opt.foldlevel = 999 -- prevent automatic folding

-- tabs & identation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.smartindent = true -- Insert indents automatically

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- test
opt.termguicolors = true

opt.conceallevel = 1
