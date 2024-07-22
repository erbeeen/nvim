-- NOTE: Standard
vim.keymap.set('n', '<leader>tm', '<cmd> Telescope colorscheme <cr>', { desc = 'Change Colorscheme', silent = true, noremap = true })
vim.keymap.set('n', '<leader>q', '<C-w>q', { desc = 'Close Window' })

-- NOTE: Todo Comments
vim.keymap.set('n', '<leader>j', function()
  require('todo-comments').jump_next()
end, { desc = 'Next todo comment' })

vim.keymap.set('n', '<leader>k', function()
  require('todo-comments').jump_prev()
end, { desc = 'Previous todo comment' })

-- NOTE: Neogit + Gitsigns
vim.keymap.set('n', '<leader>gg', '<cmd> Neogit kind=floating <cr>', { desc = 'Neogit', noremap = true })
vim.keymap.set('n', '<leader>gc', '<cmd> Neogit commit <cr>', { desc = 'Neogit Commit', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gl', '<cmd> Neogit pull <cr>', { desc = 'Neogit pull', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gp', '<cmd> Neogit push <cr>', { desc = 'Neogit push', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gb', '<cmd> Telescope git_branches <cr>', { desc = 'Telescope Git Branches', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gB', '<cmd> G blame <cr>', { desc = 'Git Blame', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gdo', '<cmd> DiffviewOpen <cr>', { desc = 'Diffview Open', silent = true, noremap = true })
vim.keymap.set('n', '<leader>gdc', '<cmd> DiffviewClose <cr>', { desc = 'Diffview Close', silent = true, noremap = true })

-- NOTE: Barbar.nvim
vim.keymap.set('n', '<tab>', '<cmd> bnext <cr>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<S-tab>', '<cmd> bprevious <cr>', { desc = 'Previous Buffer' })
vim.keymap.set('n', '<leader>x', '<cmd> BufferClose! <cr>', { desc = 'Close Buffer' })

-- NOTE: Toggle Term
vim.keymap.set({'n', 'i', 'v', 't'}, '<A-h>', '<cmd> :ToggleTerm <cr>', { desc = 'Horizontal Term' })

-- NOTE: NvimTree
vim.keymap.set({ 'n', 'i', 'v', 't' }, '<C-n>', '<cmd> NvimTreeToggle <cr>', { silent = true, noremap = true })
