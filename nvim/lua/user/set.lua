-- cursor
vim.opt.guicursor = ''

-- indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrap
vim.opt.wrap = false

-- line/relative number
vim.opt.number = true
vim.opt.relativenumber = true

-- complete the longest common match, and allow tabbing the results to fully complete them 
vim.opt.wildmode = 'longest:full,full'

vim.opt.title = true

-- enable mouse for all modes
vim.opt.mouse = 'a'

vim.opt.termguicolors = true

-- spell checking
vim.opt.spell = true

-- search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- enable the listchars
vim.opt.list = true
vim.opt.listchars = { tab = '▸ ', trail = '·', nbsp = '␣' }

-- remove the ~ from end of buffer
vim.opt.fillchars:append({ eob = ' ' })

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- use system clipboard
vim.opt.clipboard = 'unnamedplus'

-- confirm instead error
vim.opt.confirm = true

-- persist undo history
vim.opt.undofile = true

-- automatically save a backup file
vim.opt.backup = true

-- keep backups out of the current directory
vim.opt.backupdir:remove('.')

-- highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true
