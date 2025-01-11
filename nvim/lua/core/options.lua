vim.o.cursorline = true
vim.o.scrolloff = 999

vim.o.number = true
vim.o.relativenumber = true

vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

--  Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.wrap = false

vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.incsearch = true
vim.o.smartcase = true

vim.o.showmode = false

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.o.backup = false
vim.o.swapfile = false
vim.o.undodir = os.getenv('HOMEPATH') .. '/.nvim/undodir'
vim.o.undofile = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.foldmethod = "expr"

if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
    vim.cmd [[
            let &shell = executable('pwsh') ? 'pwsh' : 'powershell'
            let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';Remove-Alias -Force -ErrorAction SilentlyContinue tee;'
            let &shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
            let &shellpipe  = '2>&1 | %%{ "$_" } | tee %s; exit $LastExitCode'
            set shellquote= shellxquote=
    ]]
end
