local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({ buffer = bufnr })
	lsp.buffer_autoformat()
end)

local lspconf = require('lspconfig')

-- lua
lspconf.lua_ls.setup(lsp.nvim_lua_ls(
))

--BQN
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
			autostart = true
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
lspconf.bqnlsp.setup {}

lsp.setup()
