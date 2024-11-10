return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- lsp plgin 
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Plugin for saving sessions (cursors, buffers, etc)
  {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
      -- log_level = 'debug',
    }
  },

  -- Plugin for viewing lsp warning
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
    keys = {
      {
        "<leader>ww",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)"
      }
    }
  },

  -- Linter
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  		  "rust", "go", "python",
        "vim", "lua", "vimdoc",
        "html", "css", "markdown",
  		},
  	},
  },

  -- Plugin for rendering md content.
  {
      'MeanderingProgrammer/render-markdown.nvim',
      ft = { 'markdown' },
      dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
      ---@module 'render-markdown'
      ---@type render.md.UserConfig
      opts = {},
  },
}
