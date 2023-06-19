require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "cpp", "python", "javascript", "go" },
	highlight = {
		enable = true,
	},
	rainbow = {
		enable = true,
		extended_mode = true,
		max_file_lines = nil
	}
}
