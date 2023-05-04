-- Setup
local home_dir = os.getenv("HOME")

-- Plugins
require("lazy").setup({
	--Required 
	{"nvim-tree/nvim-web-devicons"},

	--Plugins
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
	{
    'goolord/alpha-nvim',
    config = function ()
		      package.path = home_dir .. "/.config/nvim/lua/after/?.lua;" .. package.path
			require("alpha-config")
    end
	},
	
  
	{
    "williamboman/mason.nvim",
  },
	
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
    package.path = home_dir .. "/.config/nvim/lua/after/?.lua;" .. package.path
			require("lsp")
		end
	},

	{
   "neovim/nvim-lspconfig",
	}
})