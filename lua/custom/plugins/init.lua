-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- NOTE: Colorschemes
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'ellisonleao/gruvbox.nvim' },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'rose-pine'
    end,
  },
  -- NOTE: Status Line
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        tabline = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch' },
          lualine_c = { 'filename', 'diff', 'diagnostics' },
          lualine_x = { 'fileformat', 'filetype' },
          lualine_y = { 'location' },
          lualine_z = { 'os.date("%I:%M %m/%d")' },
        },
        inactive_sections = {},
        options = { theme = 'iceberg_dark' },
      }
    end,
  },

  -- NOTE: File Tree
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup()
    end,
  },

  -- NOTE: Tabs
  -- {
  --   'romgrk/barbar.nvim',
  --   dependencies = {
  --     'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
  --     'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  --   },
  --   init = function()
  --     vim.g.barbar_auto_setup = false
  --   end,
  --   opts = {
  --     -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
  --     -- animation = true,
  --     -- insert_at_start = true,
  --     -- …etc.
  --   },
  --   version = '^1.0.0', -- optional: only update when a new 1.x version is released
  -- },

  -- NOTE: Git Integration
  'sindrets/diffview.nvim', -- optional - Diff integration
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = true,
  },

  -- NOTE: Terminal Toggle
  {
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup()
    end,
  },

  -- NOTE: Harpoon
  {
    'ThePrimeagen/harpoon',
    config = function()
      require('harpoon').setup()
    end,
  },

  -- NOTE: Floating Cmd Line
  {
    'VonHeikemen/fine-cmdline.nvim',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('fine-cmdline').setup {
        cmdline = {
          enable_keymaps = true,
          smart_history = true,
          prompt = ': ',
        },
        popup = {
          size = {
            width = '30%',
          },
          border = {
            style = 'rounded',
          },
          win_options = {
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
          },
        },
      }
    end,
  },
}
