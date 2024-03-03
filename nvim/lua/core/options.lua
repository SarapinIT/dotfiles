vim.opt.cursorline = true
vim.opt.scrolloff = 999

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.signcolumn = 'yes'
vim.opt.mouse = 'a'

-- NOTE: You should make sure your terminal supports this
vim.opt.termguicolors = true

--  Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.showmode = false

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv('HOMEPATH') .. '/.nvim/undodir'
vim.opt.undofile = true

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.foldmethod = "expr"
-- vim.o.foldexpr = "nvim_treesitter#foldexpr()"
