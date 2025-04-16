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
      require('nvim-tree').setup {
        view = {
          side = "right",
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 1000,
        },
      }
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
      local os_name = package.config:sub(1, 1)
      local terminal = ''
      if os_name == '\\' then
        terminal = 'powershell.exe'
      else
        terminal = 'zsh'
      end
      require('toggleterm').setup {
        shell = terminal
      }
    end
  },

  -- NOTE: Harpoon
  {
    'ThePrimeagen/harpoon',
    config = function()
      require('harpoon').setup()
    end,
  },

  -- NOTE: nvim-jdtls
  {
    'mfussenegger/nvim-jdtls',
  },

  -- NOTE: Flutter Tools
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = function()
      require('flutter-tools').setup {}
    end,
  },

  -- NOTE: Floating Cmd Line
  -- {
  --   'VonHeikemen/fine-cmdline.nvim',
  --   dependencies = {
  --     'MunifTanjim/nui.nvim',
  --   },
  --   config = function()
  --     vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})
  --     require('fine-cmdline').setup {
  --       cmdline = {
  --         enable_keymaps = true,
  --         smart_history = true,
  --         prompt = ': ',
  --       },
  --       popup = {
  --         position = {
  --           row = '90%',
  --           col = '50%',
  --         },
  --         size = {
  --           width = '30%',
  --         },
  --         border = {
  --           style = 'rounded',
  --         },
  --         win_options = {
  --           winhighlight = 'Normal:Normal,FloatBorder:FloatBorder',
  --         },
  --       },
  --     }
  --   end,
  -- },

  -- NOTE: Python ENV Selector
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      'mfussenegger/nvim-dap-python', --optional
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = false,
    branch = 'regexp', -- This is the regexp branch, use this for the new version
    keys = {
      { ',v', '<cmd>VenvSelect<cr>' },
    },
    ---@type venv-selector.Config
    opts = {
      -- Your settings go here
    },
  },

  -- NOTE: Scala LSP
  {
    'scalameta/nvim-metals',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    ft = { 'scala', 'sbt', 'java' },
    opts = function()
      local metals_config = require('metals').bare_config()
      metals_config.on_attach = function(client, bufnr)
        -- your on_attach function
      end
      metals_config.init_options.statusBarProvider = "off"
      metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()
      metals_config.settings = {
        showImplicitArguments = true
      }

      return metals_config
    end,
    config = function(self, metals_config)
      -- require('lspconfig').metals.setup{}
      local nvim_metals_group = vim.api.nvim_create_augroup('nvim-metals', { clear = true })
      vim.api.nvim_create_autocmd('FileType', {
        pattern = self.ft,
        callback = function()
          require('metals').initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end,
  },
}
