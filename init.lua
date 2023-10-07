-- some key shortcut usage examples:
-- space-s-f => search files
-- :180 => jump to line 180
-- gd => go to a func definition
-- gr => look for ref where func is used
--  - move up down in fzf with Ctrl N, P
--  :Telescope keymapse => see additional key short cuts
--
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install package manager
--    https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Plugins
require('lazy').setup('plugins')
-- User Settings
require('user')

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
