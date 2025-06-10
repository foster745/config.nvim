return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  ---@module 'neo-tree'
  ---@type neotree.Config?
  opts = {
    close_if_last_window = true,
    popup_border_style = '',
    enable_git_status = true,
    enable_diagnostics = true,
    window = {
      position = 'left',
      width = 40,
      auto_expand_width = true,
      mapping_options = {
        noremap = true,
        nowait = true,
      },
      mappings = {
        ['2-LeftMouse>'] = 'open',
        ['<cr>'] = 'open',
        ['<esc>'] = 'cancel',
        ['P'] = { 'toggle_preview', config = { use_float = true, use_image_nvim = true } },
        ['l'] = 'focus_preview',
        ['S'] = 'open_split',
        ['s'] = 'open_vsplit',
        ['t'] = 'open_tabnew',
        ['w'] = 'open_with_window_picker',
        ['C'] = 'close_node',
        ['z'] = 'close_all_nodes',
        ['D'] = 'delete',
        ['a'] = 'add',
        ['d'] = 'add_directory',
        ['r'] = 'rename',
        ['y'] = 'copy_to_clipboard',
        ['q'] = 'close_window',
        ['i'] = 'show_file_details',
      },
    },
    nesting_rules = {},
    filesystem = {
      hijack_netrw_behavior = 'disabled',
      window = {
        mappings = {
          ['u'] = 'navigate_up',
          ['.'] = 'set_root',
          ['H'] = 'toggle_hidden',
          ['/'] = 'fuzzy_finder',
          ['fd'] = 'fuzzy_finder_directory',
        },
      },
    },
  },
}
