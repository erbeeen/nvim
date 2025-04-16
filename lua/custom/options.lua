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

-- NOTE: For setting colorscheme
vim.cmd.colorscheme 'gruvbox'

-- NOTE: For making background color navy blue
-- Comment out to disable
local nvchad_rose_pine_bg = '#13111e'
local none = 'NONE'
vim.api.nvim_set_hl(0, 'Normal', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'FloatWindow', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'NormalActive', { bg = nvchad_rose_pine_bg })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = nvchad_rose_pine_bg })

-- NOTE: Copied from kickstart
-- Turning this on will make indents have character markers

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- local _border = 'single'

-- vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
--   border = _border,
-- })

-- vim.lsp.handlers['/textDocument/hover'] = {
--   border = _border
-- }

-- vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
--   border = _border,
-- })

-- vim.lsp.handlers['textDocument/signatureHelp'] = {
--   border = _border
-- }

vim.diagnostic.config {
  float = { border = _border },
}
