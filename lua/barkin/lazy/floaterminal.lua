return {
	"barkinunal/floaterminal.nvim",
	config = function()
		require("floaterminal").setup()

		vim.keymap.set({ "n", "t" }, "<leader>tt", ":Floaterminal<CR>")
		vim.keymap.set({ "n", "t" }, "<leader><leader>", ":FloaterminalTabNew<CR>")
		vim.keymap.set({ "n", "t" }, "<leader>d", ":FloaterminalTabC<CR>")
		vim.keymap.set({ "n", "t" }, "<leader>]", ":FloaterminalTabN<CR>")
		vim.keymap.set({ "n", "t" }, "<leader>[", ":FloaterminalTabP<CR>")
	end,
}
