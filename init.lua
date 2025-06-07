-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require 'options.options'

-- [[ Setting Keymaps ]]
require 'keymaps.keymaps'

-- [[ Setting Autocommands ]]
require 'autocmds.autocmds'

-- [[ Setup Plugins ]]
require 'plugins'
