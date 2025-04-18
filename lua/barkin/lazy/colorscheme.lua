local colorschemes = {
	kanagawa = {
		"rebelot/kanagawa.nvim",
		config = function()
			require("kanagawa").setup({
				compile = false, -- enable compiling the colorscheme
				undercurl = true, -- enable undercurls
				commentStyle = { italic = true },
				functionStyle = {},
				keywordStyle = { italic = true },
				statementStyle = { bold = true },
				typeStyle = {},
				transparent = false, -- do not set background color
				dimInactive = false, -- dim inactive window `:h hl-NormalNC`
				terminalColors = true, -- define vim.g.terminal_color_{0,17}
				colors = { -- add/modify theme and palette colors
					palette = {},
					theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
				},
				overrides = function(colors) -- add/modify highlights
					return {}
				end,
				theme = "dragon", -- Load "wave" theme when 'background' option is not set
				background = { -- map the value of 'background' option to a theme
					dark = "dragon", -- try "dragon" !
					light = "lotus",
				},
			})
			vim.cmd("colorscheme kanagawa")
		end,
	},

	catppuccin = {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	rosePine = {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end,
	},

	tokyoNight = {
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		init = function()
			vim.cmd.colorscheme("tokyonight-night")
			vim.cmd.hi("Comment gui=none")
		end,
	},

	material = {
		"marko-cerovac/material.nvim",
		config = function()
			--Lua:
			vim.g.material_style = "darker"
			vim.cmd.colorscheme("material")
			vim.opt.guicursor = "n-v-i-c:block-Cursor"

			require("material").setup({
				plugins = { -- Uncomment the plugins that you use to highlight them
					-- Available plugins:
					-- "coc",
					-- "colorful-winsep",
					-- "dap",
					-- "dashboard",
					-- "eyeliner",
					-- "fidget",
					-- "flash",
					-- "gitsigns",
					-- "harpoon",
					-- "hop",
					-- "illuminate",
					-- "indent-blankline",
					-- "lspsaga",
					-- "mini",
					-- "neogit",
					-- "neotest",
					-- "neo-tree",
					-- "neorg",
					-- "noice",
					-- "nvim-cmp",
					-- "nvim-navic",
					-- "nvim-tree",
					-- "nvim-web-devicons",
					-- "rainbow-delimiters",
					-- "sneak",
					-- "telescope",
					-- "trouble",
					-- "which-key",
					-- "nvim-notify",
				},
			})
		end,
	},
}

return colorschemes.material
