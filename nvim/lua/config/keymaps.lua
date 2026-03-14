local keymap = vim.keymap.set

-- Insert mode: jk to escape
keymap("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Normal mode: indenting
keymap("n", "<Tab>", ">>", { desc = "Indent line" })
keymap("n", "<S-Tab>", "<<", { desc = "Unindent line" })

-- Buffer navigation
keymap("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
keymap("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })

-- Splits
keymap("n", "<leader>v", ":vsplit<CR>", { desc = "Vertical split" })
keymap("n", "<leader>s", ":split<CR>", { desc = "Horizontal split" })

-- Pane navigation
keymap("n", "<leader>h", "<C-w>h", { desc = "Focus left pane" })
keymap("n", "<leader>j", "<C-w>j", { desc = "Focus below pane" })
keymap("n", "<leader>k", "<C-w>k", { desc = "Focus above pane" })
keymap("n", "<leader>l", "<C-w>l", { desc = "Focus right pane" })

-- Keep cursor centered on scroll
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })

-- Keep cursor centered on search
keymap("n", "n", "nzzzv", { desc = "Next search result centered" })
keymap("n", "N", "Nzzzv", { desc = "Prev search result centered" })

-- Yank to system clipboard
keymap("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

-- Visual mode: indenting
keymap("v", "<Tab>", ">gv", { desc = "Indent selection" })
keymap("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

-- Visual mode: jk to escape
keymap("v", "jk", "<Esc>", { desc = "Exit visual mode" })

-- Visual mode: move lines up/down
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Visual mode: paste without replacing register
keymap("v", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Visual mode: yank to system clipboard
keymap("v", "<leader>y", '"+y', { desc = "Yank selection to clipboard" })
