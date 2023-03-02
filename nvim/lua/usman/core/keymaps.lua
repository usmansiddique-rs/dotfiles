-- change the leader key (default is /)
vim.g.mapleader = " "

local keymap = vim.keymap   -- for conciseness

-- =============================================================================
-- ============================================================= general keymaps
-- =============================================================================

-- mode, new keymap, old keymap
keymap.set("i", "jk", "<ESC>")              -- use jk to go into INSERT mode
keymap.set("n", "<leader>nh", ":nohl<CR>")  -- clear search highlights
keymap.set("n", "x", '"_x"')                -- delete char but dont copy in buffer

keymap.set("n", "<leader>+", "<C-a>")       -- increment numbers
keymap.set("n", "<leader>-", "<C-x>")       -- decrement numbers

-- pane creation
keymap.set("n", "<leader>sv", "<C-w>v")     -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s")     -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=")     -- make split window width equal
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- pane navigation
keymap.set("n", "<C-up>", "<C-w>k")         -- move to pane above
keymap.set("n", "<C-down>", "<C-w>j")       -- move to pane below
keymap.set("n", "<C-left>", "<C-w>h")       -- move to pane left
keymap.set("n", "<C-right>", "<C-w>l")      -- move to pane right

-- resize split panes
keymap.set("n", "<C-j>", "<c-w>-")          -- resize up
keymap.set("n", "<C-k>", "<c-w>+")          -- resize down
keymap.set("n", "<C-h>", "<c-w><")          -- resize left
keymap.set("n", "<C-l>", "<c-w>>")          -- resize right

-- tab creation
keymap.set("n", "<leader>to", ":tabnew<CR>")    -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>")  -- close current tab

-- tab navigation
keymap.set("n", "<leader>tn", ":tabn<CR>")      -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>")      -- go to previous tab
keymap.set("n", "<leader>t0", ":tabfirst<CR>")  -- go to first tab
keymap.set("n", "<leader>t$", ":tablast<CR>")   -- go to last tab

-- =============================================================================
-- ============================================================= plugin keymaps
-- =============================================================================

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")   -- maximize and restore a split window


-- -- telescope
-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")  -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>")   -- find string in current working directory as you type
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")     -- list open buffers in current neovim instance
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")   -- list available help tags

-- -- telescope git commands
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")     -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>")   -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")    -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")      -- list current changes per file with diff preview ["gs" for git status]

-- -- restart lsp server
-- keymap.set("n", "<leader>rs", ":LspRestart<CR>")    -- mapping to restart lsp if necessary

