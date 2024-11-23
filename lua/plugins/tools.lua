return {
    -- File explorer
--   {
--     "nvim-neo-tree/neo-tree.nvim",
--     branch = "v3.x",
--     dependencies = {
--       "nvim-lua/plenary.nvim",
--       "nvim-tree/nvim-web-devicons",
--       "MunifTanjim/nui.nvim",
--     },
--     config = function()
--       require("neo-tree").setup()
--       vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
--     end,
--   },



  -- Fuzzy finder
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
    end,
  },

  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "lua", "vim", "javascript", "typescript", "python", "go" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },

   -- Git integration
   {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  },

   -- Status line
   {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup()
    end
  },
   -- Auto pairs
   {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
      require('nvim-autopairs').setup()
    end
  },

  -- Comment toggler
  {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  },
    --gcc - Comment/uncomment current line
    -- gc - Comment/uncomment selection (visual mode)
    -- gcap - Comment/uncomment a paragraph

}