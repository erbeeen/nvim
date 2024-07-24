vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 10
vim.opt.guicursor = 'n-v-c-i:block'
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.background = 'dark'

-- NOTE: For removing bottom status line
vim.opt.laststatus = 0

-- NOTE: For making background color navy blue
-- Comment out to disable
local navy_blue = '#282c34'
vim.api.nvim_set_hl(0, 'Normal', { bg = navy_blue })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = navy_blue })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = navy_blue })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = navy_blue })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = navy_blue })

-- NOTE: Copied from kickstart
-- Turning this on will make indents have character markers

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'
