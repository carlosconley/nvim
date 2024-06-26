
-- Colorscheme settings
vim.o.background = "dark"
-- vim.cmd[[colorscheme default]]
vim.cmd[[colorscheme gruvbox]]

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

-- Whitespace
vim.opt.list = true
local space = "·"
vim.opt.listchars:append ({
    tab="▸ ",
    multispace=space,
	leadmultispace="|   ",
    nbsp= "␣",
    trail= space,
    --eol="↵",
    extends="◣",
    precedes="◢",
})
