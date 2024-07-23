vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 10
vim.opt.guicursor = 'n-v-c-i:block'
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.background = 'dark'

-- NOTE: For Transparent background
-- Comment out to disable
vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

-- NOTE: Copied from kickstart
-- Turning this on will make indents have character markers

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
