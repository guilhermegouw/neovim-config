return {
  -- Lazy.nvim can manage itself
  "folke/lazy.nvim",

  -- Which-key for keybindings
  "folke/which-key.nvim",

  -- Treesitter for better syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("user.plugins.treesitter").setup()
    end,
  },

  {
    'nvim-tree/nvim-web-devicons',
    config = function()
      require('nvim-web-devicons').setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
      }
    end
  },

  -- Minimalist Pythonist
  {
    'guilhermegouw/neovim-minimalist-pythonist',
    config = function()
      print("Loading Minimalist Pythonist plugin...")
      require('minimalist_pythonist').setup()
    end
  },

  -- File explorer
  {
    "kyazdani42/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("user.plugins.nvimtree").setup()
    end,
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { {'nvim-lua/plenary.nvim'} },
    config = function()
      require("user.plugins.telescope").setup()
    end,
  },

  -- Codeium
  {
    'Exafunction/codeium.vim',
    event = 'BufEnter'
  },

  -- Color Scheme
  {
    "navarasu/onedark.nvim",
    lazy = false,  -- load the colorscheme immediately
    priority = 1000,  -- ensure it loads first
    config = function()
      require('onedark').setup {
        style = 'dark'  -- Set the theme style (darker, deep, warm, warmer)
      }
      require('onedark').load()
    end,
  },
  -- Add more plugins as needed
}

