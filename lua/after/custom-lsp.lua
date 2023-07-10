local configs = require('lspconfig.configs')
local util = require('lspconfig.util')

if not configs.clangd then
	configs.clangd = {
		default_config = {
			cmd = { 'clangd' },
			cmd_env = {},
			filetypes = { 'cpp','c' },
			root_dir = util.find_git_ancestor,
			single_file_support = false,
		},
		docs = {
			description = [[
      C/C++ Language Server
  ]],
			default_config = {
				root_dir = [[util.find_git_ancestor]],
			},
		},
	}
end
