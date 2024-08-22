return {
	"rmagatti/auto-session",
	config = function()
		local auto_session = require("auto-session")

		auto_session.setup({
			auto_restore_enabled = false,
			auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
			auto_session_root_dir = "$HOME/build/sessions/", -- Sessions are stored here
		})

		local keymap = vim.keymap
		local session_root = auto_session.conf.auto_session_root_dir

		keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
		keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory
		keymap.set("n", "<leader>wsr", "<cmd>Autosession search<CR>", { desc = "Search sessions" })

		-- Custom commands to save and restore sessions with names
		keymap.set("n", "<leader>wsn", function()
			vim.ui.input({ prompt = "Session Name: " }, function(input)
				if input then
					local session_path = session_root .. input
					vim.cmd("SessionSave " .. session_path)
				end
			end)
		end, { desc = "Save session with name" })

		keymap.set("n", "<leader>wrn", function()
			vim.ui.input({ prompt = "Session Name: " }, function(input)
				if input then
					local session_path = session_root .. input
					vim.cmd("SessionRestoreFromFile " .. session_path)
				end
			end)
		end, { desc = "Restore session with name" })
	end,
}
