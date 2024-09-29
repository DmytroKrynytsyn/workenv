function Common ()

  local mapkey = require("config.keymapper").mapvimkey

    -- Buffer Navigation
  mapkey("<leader>n", "bnext", "n") -- Next buffer
  mapkey("<leader>p", "bprevious", "n") -- Prev buffer
  mapkey("<leader>b", "e #", "n") -- Switch to Other Buffer

  -- Directory Navigation
  -- mapkey("<leader>m", "NvimTreeFocus", "n")
  -- mapkey("<leader>e", "NvimTreeToggle", "n")

  -- Pane and Window Navigation
  mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
  mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
  mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
  mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
  mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
  mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
  mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
  mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
  mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
  mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
  mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
  mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

  -- Window Management
  mapkey("<leader>wv", "vsplit", "n") -- Split Vertically
  mapkey("<leader>wh", "split", "n") -- Split Horizontally
  mapkey("<leader>wq", "quit", "n") -- Split Horizontally

  -- Show Full File-Path
  mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path
  
  -- Search
  mapkey("<leader><Esc><Esc>", "noh", "n")

end


function Telescope ()

  local builtin = require 'telescope.builtin'
  vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]ind [K]eymaps' })
  vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
  vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]ind current [W]ord' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]ind by [G]rep' })
  vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]ind [D]iagnostics' })
  vim.keymap.set('n', '<leader>fr', builtin.registers, { desc = '[F]ind [R]egisters' })
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[ ] Find existing buffers' })
  
  vim.keymap.set('n', '<leader>ft', "<cmd>TodoTelescope<cr>", { desc = "Find todos" })

  vim.keymap.set('n', '<leader>/', function()
    builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
      winblend = 10,
      previewer = false,
    })
  end, { desc = '[/] Fuzzily search in current buffer' })

  vim.keymap.set('n', '<leader>fn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
  end, { desc = '[F]ind [N]eovim files' })

end

function Neotree ()
  vim.keymap.set('n', '<leader>t', '<Cmd>Neotree<CR>')
end

function NvimComment ()
  vim.keymap.set('n', '<leader>ec', '<Cmd>CommentToggle<CR>')
end

function Toggleterm ()
  vim.keymap.set('n', '<leader>c', '<Cmd>ToggleTerm direction=float<CR>')
end

function Gitsigns ()
  vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
end

function VimFugitive ()
  vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", {})
end

return { Telescope = Telescope, 
         Common = Common, 
         Neotree = Neotree, 
         NvimComment = NvimComment,
         Gitsigns = Gitsigns,
         Toggleterm = Toggleterm,
         VimFugitive = VimFugitive }
