-- change the leader key (default is /)
vim.g.mapleader = " "

local keymap = vim.keymap   -- for conciseness 

-- general keymaps
-- mode, new keymap, old keymap
keymap.set("i", "jk", "<ESC>")              -- use jk to go into INSERT mode 
keymap.set("n", "<leader>nh", ":nohl<CR>")  -- clear search highlights
keymap.set("n", "x", '"_x"')                -- delete char but dont copy in buffer

keymap.set("n", "<leader>+", "<C-a>")       -- increment numbers
keymap.set("n", "<leader>-", "<C-x>")       -- decrement numbers

keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split window widht equal 
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>")    -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")  -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>")      -- go to next tab 
keymap.set("n", "<leader>tp", ":tabp<CR>")      -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")   -- maximize and restore a split window

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
