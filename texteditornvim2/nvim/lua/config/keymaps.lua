function Common()
	-- Buffer Navigation
	vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { desc = "[N]ext buffer" })
	vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "[P]revious buffer" })
	vim.keymap.set("n", "<leader>b", ":e #<CR>", { desc = "Switch to other [B]uffer" })

    -- C-o and C-i - navigation between jump places

    vim.keymap.set("n", "<M-n>", ":cnext<CR>")
    vim.keymap.set("n", "<M-p>", ":cprev<CR>")
    vim.keymap.set("n", "<leader>qc", ":cclose<CR>")
    vim.keymap.set("n", "<leader>qo", ":copen<CR>")

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

	-- Window Management
	vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "[W]indow [V]ertical split" })
	vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "[W]indow [H]orizontal split" })
	vim.keymap.set("n", "<leader>wc", ":quit<CR>", { desc = "[W]indow [Q]uit" })
    vim.keymap.set("n", "<leader>wb", "<C-w>_", { desc = "[W]indow [B]ig Height" })
    vim.keymap.set("n", "<leader>we", "<C-w>=", { desc = "[W]indow [E]qual Height" })
    vim.keymap.set("n", "<leader>ws", ":resize 1<CR>", { desc = "[W]indow [S]mall Height" })

	vim.keymap.set("n", "<leader><Esc><Esc>", ":noh<CR>", { desc = "Clear search highlights" })

    local function open_term(layout)
      if layout == "horizontal" then
        vim.cmd("split | terminal")
        vim.api.nvim_win_set_height(0, 10)
    elseif layout == "vertical" then
        vim.cmd("vsplit | terminal")
      else
        vim.cmd("terminal")
      end
    end

    vim.keymap.set("n", "<leader>th", function() open_term("horizontal") end, { desc = "Horizontal terminal (10 lines)" })
    vim.keymap.set("n", "<leader>tv", function() open_term("vertical") end, { desc = "Vertical terminal" })

    vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
      pattern = "term://*",
      callback = function()
        vim.cmd("startinsert")
        vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], {
          buffer = 0,
          silent = true,
          desc = "Exit terminal mode",
        })
      end,
    })
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
	vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "[F]ind [Q]uickfix" })
	vim.keymap.set("n", "<leader>fj", builtin.jumplist, { desc = "Switch to other [J]umps" })
	vim.keymap.set("n", "<leader>fm", builtin.marks, { desc = "Find [M]arks" })

	vim.keymap.set("n", "<leader>/", function()
		builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
			winblend = 10,
			previewer = false,
		}))
	end, { desc = "[/] Fuzzy find in current buffer" })

	vim.keymap.set("n", "<leader>fn", function() builtin.find_files({ cwd = vim.fn.stdpath("config") }) end, { desc = "[F]ind [N]eovim config files" })
end

function Neotree()
	vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle left<CR>", { desc = "Toggle [E]xplorerTree" })
end

function Gitsigns()
	vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "[G]it [P]review hunk" })
end

function VimFugitive()
	vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "[G]it [B]lame" })
end

function Comment()
	vim.keymap.set("n", "<leader>ec", "gcc", { remap = true, desc = "Toggle comment" })
	vim.keymap.set("x", "<leader>ec", "gc", { remap = true, desc = "Toggle comment (visual)" })
end

function TodoComments()
	vim.keymap.set("n", "<leader>tn", function() require("todo-comments").jump_next() end, { desc = "[T]odo [N]ext" })
	vim.keymap.set("n", "<leader>tp", function() require("todo-comments").jump_prev() end, { desc = "[T]odo [P]revious" })
end

function Flash()
  vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash" })
  vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
end

return {
	Telescope = Telescope,
	Common = Common,
	Neotree = Neotree,
	NvimComment = NvimComment,
	Gitsigns = Gitsigns,
	Toggleterm = Toggleterm,
	VimFugitive = VimFugitive,
	Comment = Comment,
	EasyMotion = EasyMotion,
	TodoComments = TodoComments,
    Flash = Flash,
}
