vim.g.mapleader = " "

local keymap = vim.keymap

-- Insert mode: jk to escape
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Buffer navigation
keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })

-- Normal mode: indenting
keymap.set("n", "<Tab>", ">>", { desc = "Indent line" })
keymap.set("n", "<S-Tab>", "<<", { desc = "Unindent line" })

-- Keep cursor centered on scroll
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })

-- Keep cursor centered on search
keymap.set("n", "n", "nzzzv", { desc = "Next search result centered" })
keymap.set("n", "N", "Nzzzv", { desc = "Prev search result centered" })

-- Yank to system clipboard
keymap.set("n", "<leader>y", '"+y', { desc = "Yank to clipboard" })
keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank line to clipboard" })

-- Visual mode: indenting
keymap.set("v", "<Tab>", ">gv", { desc = "Indent selection" })
keymap.set("v", "<S-Tab>", "<gv", { desc = "Unindent selection" })

-- Visual mode: jk to escape
keymap.set("v", "jk", "<Esc>", { desc = "Exit visual mode" })

-- Visual mode: move lines up/down
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Visual mode: paste without replacing register
keymap.set("v", "<leader>p", '"_dP', { desc = "Paste without yanking" })

-- Visual mode: yank to system clipboard
keymap.set("v", "<leader>y", '"+y', { desc = "Yank selection to clipboard" })
