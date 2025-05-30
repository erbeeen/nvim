vim.opt.foldmethod = 'indent'
vim.opt.foldlevel = 10
vim.opt.guicursor = 'n-v-c-i:block'
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.cmdheight = 1
vim.o.background = 'dark'
vim.o.wrap = false
vim.o.termguicolors = true
vim.o.autoread = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- NOTE: For setting colorscheme
vim.cmd.colorscheme 'gruvbox'

-- NOTE: For removing bottom status line: set value to 0
vim.opt.laststatus = 3


-- NOTE: For making background color navy blue
-- Comment out to disable
local nvchad_rose_pine_bg = '#13111e'
local none = 'NONE'
vim.api.nvim_set_hl(0, 'Normal', { bg = none })
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = none })
vim.api.nvim_set_hl(0, 'FloatWindow', { bg = none })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = none })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = none })
vim.api.nvim_set_hl(0, 'CursorLineNr', { bg = none })
vim.api.nvim_set_hl(0, 'SignColumn', { bg = none })
vim.api.nvim_set_hl(0, 'NormalActive', { bg = none })
vim.api.nvim_set_hl(0, 'NormalNC', { bg = none })

-- NOTE: Copied from kickstart
-- Turning this on will make indents have character markers

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

local _border = 'single'

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = _border,
})

vim.lsp.handlers['/textDocument/hover'] = {
  border = _border
}

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = _border,
})

vim.lsp.handlers['textDocument/signatureHelp'] = {
  border = _border
}

vim.diagnostic.config {
  float = { border = _border },
}
