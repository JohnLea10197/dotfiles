-- [[ Setting options ]]
-- See `:help vim.o`

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- scroll padding
vim.o.scrolloff = 16
vim.o.sidescrolloff = 16

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.g.material_style = "darker"
vim.o.termguicolors = true
vim.g.adwaita_disable_cursorline = true
vim.cmd [[colorscheme adwaita]]

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
