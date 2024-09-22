local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- "Mofiqul/vscode.nvim",
  -- Theme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("config.colorscheme")
    end,
  },
  -- vscode-like pictograms
  {
    "onsails/lspkind.nvim",
    event = { "VimEnter" },
  },
  -- Auto-completion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "lspkind.nvim",
      "hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
      "hrsh7th/cmp-buffer",   -- buffer auto-completion
      "hrsh7th/cmp-path",     -- path auto-completion
      "hrsh7th/cmp-cmdline",  -- cmdline auto-completion
    },
    config = function()
      require("config.nvim-cmp")
    end,
  },
  -- Code snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
  },
  -- LSP Install
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("config.none-ls")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("config.lualine")
    end,
  },
  -- SideBar File Tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("config.nvim-tree")
    end,
  },
  -- Global Search
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
      vim.g.telescope_auto_setup = false
    end,
  },
  -- Terminal
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require('config.toggleterm')
    end,
  },
  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        -- config
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  -- top tabline
  {
    "romgrk/barbar.nvim",
    dependencies = {
      "lewis6991/gitsigns.nvim",     -- OPTIONAL: for git status
      "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:      -- insert_at_start = true,
      -- …etc.
    },
    config = function()
      require("config.barbar")
    end,
    version = "^1.0.0", -- optional: only update when a new 1.x version is released
  },
  -- Code HighLight
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "lewis6991/gitsigns.nvim",
    version = "*",
    config = function()
      require("config.gitsigns")
    end,
  },
  -- Yazi
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    config = function()
      require("config.yazi")
    end,
  },
  -- telescope file browser plugin
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("config.conform")
    end,
  },
  {
    "nvim-tree/nvim-web-devicons",
  },
  -- Rust Integeration
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false,   -- This plugin is already lazy
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
})
