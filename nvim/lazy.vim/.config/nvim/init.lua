vim.opt.mouse = ''
vim.opt.showcmd = true
vim.opt.backup = false
vim.opt.syntax = ''
vim.opt.textwidth = 0
vim.opt.fileformat = 'unix'
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
vim.opt.termguicolors = true
vim.cmd.colorscheme('industry')

require("config.lazy")
require('nvim-treesitter.configs').setup {
    highlight = {
        enable = true
    },
    indent = {
        enable = true
    }
}

-- nvim-lspconfig should be installed by
-- $ git clone https://github.com/neovim/nvim-lspconfig $HOME/.config/nvim/pack/nvim/start

-- rustup should be insatlled with 'apt install'
vim.lsp.config('rust_analyzer', {
    cmd = { '/usr/bin/rust-analyzer' },
    settings = {
        ['rust-analyzer'] = {
        }
    }
})

-- pylsp should be insatlled with 'apt install python3-pylsp'
vim.lsp.config('pylsp', {
    cmd = { '/usr/bin/pylsp' },
    settings = {
        pylsp = {
            enabled = true,
            --plugins = {
            --}
        }
    }
})

-- rust_analyzer should be enabled only in .rs file
--vim.lsp.enable('rust_analyzer')
-- pylsp should be enabled only in .py file
--vim.lsp.enable('pylsp')
