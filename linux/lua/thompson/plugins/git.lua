-- lua/tthompson/plugins/git.lua - Git Configs
return {
	"tpope/vim-fugitive",
	config = function()
		-- Key mappings for Git Commands
		local map = vim.api.nvim_set_keymap
		local opts = { noremap = true, silent = true }

		map("n", "<leader>gs", ":G<CR>", opts) -- Git status
		map("n", "<leader>gc", ":G commit<CR>", opts) -- Git commit
		map("n", "<leader>gp", ":G push<CR>", opts) -- Git push
		map("n", "<leader>gl", ":G pull<CR>", opts) -- Git pull
		map("n", "<leader>gd", ":G diff<CR>", opts) -- Git diff
		map("n", "<leader>ga", ":Gwrite<CR>", opts) -- Git add

		map("n", "<leader>gb', ':G branch<CR>", opts) -- Git branch
		map("n", "<leader>gbc', ':G branch<CR>", opts) -- New branch
		map("n", "<leader>gco', ':G checkout<CR>", opts) -- Checkout
		map("n", "<leader>gbd', ':G branch -d<CR>", opts) -- Delete branch
		map("n", "<leader>gbr', ':G branch -m<CR>", opts) -- Rename branch
	end,
}
