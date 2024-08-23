require("thompson.core")
require("thompson.lazy")

-- Custom command to make the current file executable
vim.api.nvim_create_user_command("MakeExecutable", function()
	local file = vim.fn.expand("%:p")
	vim.cmd("!chmod +x " .. file)
	print(file .. " is now executable.")
end, {})

-- Optional: Key mapping to trigger MakeExecutable with F3
vim.keymap.set("n", "<leader>mx", function()
	vim.cmd.MakeExecutable()
end, { desc = "Make the current file executable" })
