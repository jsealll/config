vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.compatible = false
vim.opt.encoding = 'utf-8'
vim.opt.expandtab = true
vim.opt.fileformat = 'unix'
vim.opt.guicursor = 'n-v-c:block,i-ci-ve:ver1,r-cr-o:hor1,n-v-c-i-ci-ve:blinkwait700-blinkoff250-blinkon400,r-cr-o:blinkon0'
vim.opt.hlsearch = false
vim.opt.incsearch = false
vim.opt.mouse = ''
vim.opt.ruler = true
vim.opt.scrolloff = 5
vim.opt.shiftwidth = 4
vim.opt.showcmd = true
vim.opt.showmatch = true
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.textwidth = 0
vim.opt.wrap = true
vim.cmd.colorscheme('industry')

vim.call('plug#begin')
vim.fn['plug#']('neovim/nvim-lspconfig')
vim.fn['plug#']('hrsh7th/cmp-nvim-lsp')
vim.fn['plug#']('hrsh7th/cmp-buffer')
vim.fn['plug#']('hrsh7th/cmp-path')
vim.fn['plug#']('hrsh7th/cmp-cmdline')
vim.fn['plug#']('hrsh7th/nvim-cmp')
vim.fn['plug#']('hrsh7th/cmp-vsnip')
vim.fn['plug#']('hrsh7th/vim-vsnip')
vim.call('plug#end')

require("setup_nvim-cmp")
