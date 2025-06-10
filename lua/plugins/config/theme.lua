-- You can easily change to a different colorscheme.
return {
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        theme = 'wave',
        commentStyle = { italic = false },

        backgroud = {
          dark = 'wave',
          light = 'lotus',
        },
      }
      vim.cmd.colorscheme 'kanagawa'
    end,
  },

  -- Highlight todo, notes, etc in comments
  { 'folke/todo-comments.nvim', event = 'VimEnter', dependencies = { 'nvim-lua/plenary.nvim' }, opts = { signs = false } },
}
