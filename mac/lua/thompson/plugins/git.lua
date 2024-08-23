-- lua/thompson/plugins/git.lua

return {
	"tpope/vim-fugitive",
	config = function()
		-- Use 'map' function for consistency and simplicity
		local map = vim.keymap.set
		local opts = { noremap = true, silent = true }

		-- Git status
		map("n", "<leader>gs", ":G<CR>", opts)

		-- Git commit
		map("n", "<leader>gc", ":G commit<CR>", opts)

		-- Git push
		map("n", "<leader>gp", ":G push<CR>", opts)

		-- Git pull
		map("n", "<leader>gl", ":G pull<CR>", opts)

		-- Git diff
		map("n", "<leader>gd", ":G diff<CR>", opts)

		-- Git add (stage changes)
		map("n", "<leader>ga", ":Gwrite<CR>", opts)

		-- List all branches
		map("n", "<leader>gb", ":G branch<CR>", opts)

		-- Create a new branch
		map("n", "<leader>gbc", ":G branch ", opts)

		-- Checkout a branch
		map("n", "<leader>gco", ":G checkout ", opts)

		-- Delete a branch
		map("n", "<leader>gbd", ":G branch -d ", opts)

		-- Rename the current branch
		map("n", "<leader>gbr", ":G branch -m ", opts)
	end,
}
