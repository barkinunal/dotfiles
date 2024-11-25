local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- You can put your default mappings / updates / etc. in here
--  All the info you're looking for is in `:help telescope.setup()`
--
-- defaults = {
--   mappings = {
--     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
--   },
-- },
-- pickers = {}
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

require("lazy").setup({
	spec = "barkin.lazy",
	change_detection = { notify = false },
	rocks = {
		enabled = false,
	},
	{
		"nvim-lua/plenary.nvim",
		name = "plenary",
	},
}, {
	ui = {
		-- If you are using a Nerd Font: set icons to an empty table which will use the
		-- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
		icons = vim.g.have_nerd_font and {} or {
			cmd = "⌘",
			config = "🛠",
			event = "📅",
			ft = "📂",
			init = "⚙",
			keys = "🗝",
			plugin = "🔌",
			runtime = "💻",
			require = "🌙",
			source = "📄",
			start = "🚀",
			task = "📌",
			lazy = "💤 ",
		},
	},
})
