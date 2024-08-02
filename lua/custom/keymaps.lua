-- NOTE: Standard
vim.keymap.set('n', '<leader>tm', '<cmd> Telescope colorscheme <cr>', { desc = 'Change Colorscheme', silent = true, noremap = true })
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true })
vim.keymap.set('n', '<leader>q', '<C-w>q', { desc = 'Close Window' })
vim.keymap.set('v', 'J', ":m '>+1<cr>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<cr>gv=gv")
vim.keymap.set('i', '<C-e>', '<Esc>A')
vim.keymap.set('i', '<C-a>', '<Esc>I')

-- NOTE: To close a buffer. Substitute for disabling barbar
vim.keymap.set('n', '<leader>x', '<cmd> bd <cr>', { desc = 'Close buffer' })

-- NOTE: LSP Floating Diagnostic
vim.keymap.set('n', '<leader>ff', '<cmd> lua vim.diagnostic.open_float() <cr>', { desc = 'LSP Floating Diagnostic' })

-- NOTE: Todo Comments
vim.keymap.set('n', '<leader>j', function()
  require('todo-comments').jump_next()
end, { desc = '[J] Next todo comment' })

vim.keymap.set('n', '<leader>k', function()
  require('todo-comments').jump_prev()
end, { desc = '[K] Previous todo comment' })

-- NOTE: Neogit + Gitsigns
vim.keymap.set('n', '<leader>gg', '<cmd> Neogit <cr>', { desc = 'Neogit', noremap = true })
vim.keymap.set('n', '<leader>gf', '<cmd> Neogit fetch <cr>', { desc = 'Neogit Fetch', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gl', '<cmd> Neogit pull <cr>', { desc = 'Neogit Pull', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gc', '<cmd> Neogit commit <cr>', { desc = 'Neogit Commit', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gp', '<cmd> Neogit push <cr>', { desc = 'Neogit Push', silent = true, noremap = true })
vim.keymap.set('n', '<leader>go', '<cmd> Neogit log <cr>', { desc = 'Neogit Log', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gs', '<cmd> Neogit stash <cr>', { desc = 'Neogit Stash', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gm', '<cmd> Neogit merge <cr>', { desc = 'Neogit Merge', silent = true, noremap = true })
vim.keymap.set('n', '<leader>grs', '<cmd> Neogit reset <cr>', { desc = 'Neogit Reset', silent = true, noremap = true })
vim.keymap.set('n', '<leader>grv', '<cmd> Neogit revert <cr>', { desc = 'Neogit Revert', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gb', '<cmd> Telescope git_branches <cr>', { desc = 'Telescope Git Branches', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gB', '<cmd> G blame <cr>', { desc = 'Git Blame', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gdo', '<cmd> DiffviewOpen <cr>', { desc = 'Diffview Open', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gdc', '<cmd> DiffviewClose <cr>', { desc = 'Diffview Close', silent = true, noremap = true })

-- NOTE: Barbar.nvim
-- vim.keymap.set('n', '<tab>', '<cmd> bnext <cr>', { desc = 'Next Buffer' })
-- vim.keymap.set('n', '<S-tab>', '<cmd> bprevious <cr>', { desc = 'Previous Buffer' })
-- vim.keymap.set('n', '<leader>x', '<cmd> BufferClose! <cr>', { desc = 'Close Buffer' })

-- NOTE: Toggle Term
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<A-h>', '<cmd> :ToggleTerm <cr>', { desc = 'Horizontal Term' })

-- NOTE: NvimTree
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<C-n>', '<cmd> NvimTreeToggle <cr>', { silent = true, noremap = true })

-- NOTE: Harpoon
local mark = require 'harpoon.mark'
local ui = require 'harpoon.ui'
vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<A-e>', ui.toggle_quick_menu)
vim.keymap.set('n', '<A-j>', function()
  ui.nav_file(1)
end)
vim.keymap.set('n', '<A-k>', function()
  ui.nav_file(2)
end)
vim.keymap.set('n', '<A-l>', function()
  ui.nav_file(3)
end)
vim.keymap.set('n', '<A-;>', function()
  ui.nav_file(4)
end)

-- NOTE: Fine Cmd-line
-- vim.keymap.set({ 'n', 'v' }, ':', '<cmd>FineCmdline<cr>')
-- vim.keymap.set({ 'n', 'v' }, '<cr>', ':')
