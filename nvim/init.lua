-- import files within the core folder

-- parent folder
require("usman.plugins-setup")

-- core folder
require("usman.core.colorschemes")
require("usman.core.keymaps")
require("usman.core.options")

-- plugins folder
require("usman.plugins.comment")
require("usman.plugins.nvim-tree")
require("usman.plugins.lualine")


require "usman.lsp"             -- import the lsp folder
require "usman.treesitter"      -- import treesitter
require "usman.indent-blankline"-- import indent blankline
require "usman.autopairs"       -- import autopairs
require "usman.comment"         -- import autocomments
require "usman.gitsigns"        -- import gitsigns
require "usman.nvim-tree"       -- import nvim-tree
require "usman.bufferline"      -- import bufferline