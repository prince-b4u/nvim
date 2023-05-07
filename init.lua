-- Plugin Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

--Editor Settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = false
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = ' '


--Load config
require("keymappings")
require("plugins")
local configs = require('lspconfig.configs')
local util = require('lspconfig.util')

if not configs.bqnlsp then
  configs.bqnlsp = {
    default_config = {
      cmd = { 'bqnlsp' },
      cmd_env = {},
      filetypes = { 'bqn' },
      root_dir = util.find_git_ancestor,
      single_file_support = false,
    },
    docs = {
      description = [[
      BQN Language Server
  ]],
      default_config = {
        root_dir = [[util.find_git_ancestor]],
      },
    },
  }
end
require("bufferline").setup {}
require("autoformat")
