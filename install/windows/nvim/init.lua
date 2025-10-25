vim.opt.mouse = ''
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.syntax = ''
vim.opt.textwidth = 0
vim.opt.fileformat = 'unix'
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.compatible = false
vim.opt.hlsearch = false
vim.opt.incsearch = false
vim.opt.autoindent = true
vim.opt.background = 'dark'
vim.opt.ruler = true
vim.opt.wrap = true
vim.opt.showmatch = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 5
vim.opt.encoding = 'utf-8'
vim.opt.guicursor = 'n-v-c:block,i-ci-ve:ver1,r-cr-o:hor1,n-v-c-i-ci-ve:blinkwait700-blinkoff250-blinkon400,r-cr-o:blinkon0'
vim.opt.omnifunc = 'syntaxcomplete#Complete'
vim.opt.guifont = 'hach:h10:cANSI'
vim.opt.autowriteall = true
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.cmd('highlight Cursor gui=NONE guifg=bg guibg=fg')
vim.cmd('autocmd BufReadPost,BufNewFile *.txt setlocal tw=79')
vim.cmd('autocmd FocusLost * :wa')
vim.opt.termguicolors = true
vim.cmd('colorscheme industry')
vim.api.nvim_set_keymap('n', '<F3>', 'i<C-R>=strftime("%Y-%m-%d")<CR><Esc>', {})
vim.api.nvim_set_keymap('i', '<F3>', '<C-R>=strftime("%Y-%m-%d")<CR>', {})
vim.api.nvim_set_keymap('n', '<F4>', 'i<C-R>=strftime("%H:%M:%S")<CR><Esc>', {})
vim.api.nvim_set_keymap('i', '<F4>', '<C-R>=strftime("%H:%M:%S")<CR>', {})
