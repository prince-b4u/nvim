-- Setup
local home_dir = os.getenv("HOME")

-- Plugins
require("lazy").setup({

	--Visual
	{
		"nvim-tree/nvim-web-devicons" },
	--Theme
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			vim.opt.background = "dark"
			vim.opt.termguicolors = true
			require("gruvbox").setup({
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					comments = true,
					operators = true,
					folds = true,
				},
			})
			vim.cmd.colorscheme('gruvbox')
		end,
	},
	--Start Screen
	{
		"goolord/alpha-nvim",
		config = function()
			package.path = home_dir .. "/.config/nvim/lua/after/?.lua;" .. package.path
			require("alpha-config")
		end
	},
	--Statusline
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				theme = "gruvbox",
				component_separators = "|",
				section_separators = "",
			},
		},
	},
	-- Add indentation guidelines
	{
		"lukas-reineke/indent-blankline.nvim",
		opts = {
			char = "┊",
			show_trailing_blankline_indent = false,
		},
	},
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
	-- Functional
	{
		"folke/which-key.nvim",
		config = function()
			vim.opt.timeout = true
			vim.opt.timeoutlen = 300
			require("which-key").setup({
				-- your configuration comes here
			})
		end,
	},
	--Fizy Finder
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.1",
		dependencies = { "nvim-lua/plenary.nvim" }
	},

	-- Highlight, edit, and navigate code
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
		build = ":TSUpdate",
	},

	--LSP
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		config = function()
			package.path = home_dir .. "/.config/nvim/lua/after/?.lua;" .. package.path
			require("lsp-zero-config")
		end,
		dependencies = {
			-- LSP manager
			{
				'williamboman/mason.nvim',
			},
			{
				"williamboman/mason-lspconfig.nvim",
				config = function()
					package.path = home_dir .. "/.config/nvim/lua/after/?.lua;" .. package.path
					require("lsp")
				end
			},
			{ 'neovim/nvim-lspconfig' },
			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'L3MON4D3/LuaSnip' },
		}
	},
})
