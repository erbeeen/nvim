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
