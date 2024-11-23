return {
    {
        'stevearc/oil.nvim',
        -- Optional dependencies
        dependencies = { "echasnovski/mini.icons" },
        -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
        config = function()
                require("oil").setup()
                vim.keymap.set('n', '<leader>e', ':Oil --float<CR>')
             end,
      },
}