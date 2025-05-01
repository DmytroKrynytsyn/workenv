function Common()
	-- Buffer Navigation
	vim.keymap.set("n", "<leader>n", ":bnext<CR>", { desc = "[N]ext buffer" })
	vim.keymap.set("n", "<leader>p", ":bprevious<CR>", { desc = "[P]revious buffer" })
	vim.keymap.set("n", "<leader>b", ":e #<CR>", { desc = "Switch to other [B]uffer" })

	-- Pane and Window Navigation (Normal Mode)
	vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to [H] window" })
	vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to [J] window" })
	vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to [K] window" })
	vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to [L] window" })

	-- Pane and Window Navigation (Terminal Mode)
	vim.keymap.set("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Terminal move to [H] window" })
	vim.keymap.set("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Terminal move to [J] window" })
	vim.keymap.set("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Terminal move to [K] window" })
	vim.keymap.set("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Terminal move to [L] window" })

	-- Tmux Navigation
	vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { desc = "Tmux navigate [H]eft" })
	vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { desc = "Tmux navigate [J]own" })
	vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { desc = "Tmux navigate [K]up" })
	vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { desc = "Tmux navigate [L]ight" })

	-- Window Management
	vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "[W]indow [V]ertical split" })
	vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "[W]indow [H]orizontal split" })
	vim.keymap.set("n", "<leader>wq", ":quit<CR>", { desc = "[W]indow [Q]uit" })

	-- Show Full File Path
	vim.keymap.set("n", "<leader>pa", ":echo expand('%:p')<CR>", { desc = "Show [P]ath [A]bsolute" })

	-- Search
	vim.keymap.set("n", "<leader><Esc><Esc>", ":noh<CR>", { desc = "Clear search highlights" })
end

function Telescope()
	local builtin = require("telescope.builtin")

	vim.keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
	vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
	vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
	vim.keymap.set("n", "<leader>fr", builtin.registers, { desc = "[F]ind [R]egisters" })
	vim.keymap.set("n", "<leader>fo", builtin.oldfiles, { desc = "[F]ind [O]ld files" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind existing [B]uffers" })
	vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "[F]ind [T]ODOs" })

	vim.keymap.set("n", "<leader>/", function()
		builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "[/] Fuzzy find in current buffer" })

	vim.keymap.set("n", "<leader>fn", function()
		builtin.find_files({ cwd = vim.fn.stdpath("config") })
	end, { desc = "[F]ind [N]eovim config files" })
end

function Neotree()
	vim.keymap.set("n", "<leader>t", "<Cmd>Neotree toggle<CR>", { desc = "Toggle [T]ree" })
end

function Toggleterm()
	vim.keymap.set("n", "<leader>cc", "<Cmd>ToggleTerm direction=float<CR>", { desc = "[C]ode [C]onsole (toggle terminal)" })
end

function Gitsigns()
	vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "[G]it [P]review hunk" })
end

function VimFugitive()
	vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "[G]it [B]lame" })
end

return {
	Telescope = Telescope,
	Common = Common,
	Neotree = Neotree,
	NvimComment = NvimComment,
	Gitsigns = Gitsigns,
	Toggleterm = Toggleterm,
	VimFugitive = VimFugitive,
}
