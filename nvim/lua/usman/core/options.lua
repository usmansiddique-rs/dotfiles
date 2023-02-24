local opt = vim.opt -- for conciseness

-- appearence
opt.encoding = "UTF-8"      -- enable utf-8 encoding.
opt.termguicolors = true    -- enable true colors support.
-- opt.t_Co = 256              -- enable 256 colors
opt.background = "dark"     -- set background color.
opt.signcolumn = "yes"      --

opt.filetype = "on"         -- enable type file detection.
opt.filetype.plugin = "on"  -- enable and load plugins for any file type.
opt.filetype.indent = "on"  -- load an indented file for any file type.
opt.syntax = "on"           -- turn syntax highlighting on.
opt.showmatch = true        -- highlight matching brace.

-- line numbers
opt.number = true           -- add absolute line numbers.
opt.cursorline = true       -- highlight current line.
opt.cursorcolumn = false    -- highlight current cursor column.

-- tabs and spacing
opt.autoindent = true       -- auto-indent new lines
opt.expandtab = true        -- use spaces instead of tabs
opt.smartindent = true      -- enable smart-indent
opt.smarttab = true         -- enable smart-tabs
opt.softtabstop = 4         -- number of spaces per tab
opt.shiftwidth = 4          -- set shift width to N spaces.
opt.tabstop = 4             -- set tab width to N columns.

opt.autowrite = true        -- automatically write file if changed.

-- opt.nobackup = true         -- dont save backup files.
opt.updatetime = 100        -- controls delay before vim writes to swap.
opt.scrolloff = 10          -- scroll line limit.
opt.wrap = false            -- disable wrapping lines.

-- search settings
opt.incsearch = true        -- incrementally highlight matching characters while searching.
opt.ignorecase = true       -- ignore capital letters during search.
opt.smartcase = true        -- override the ignorecase option if searching for capital letters.
opt.showmatch = true        -- show matching words during a search.
opt.hlsearch = true         -- use highlighting when doing a search.

opt.showcmd = true          -- show partial command you type in the last line of the screen.
opt.showmode = true         -- show curent mode on the last line.
opt.history=10000           -- set commands to save in history (default=20).

opt.backspace = "indent,eol,start"  -- configure backspace key behaviour

opt.browsedir = "current"   -- which directory to start browsing in

-- split windows
opt.splitright = true       -- always split window to right.
opt.splitbelow = true       -- always split window to bottom.

-- mouse support
opt.mouse = "a"             -- enable mouse usage in editor.

opt.title = true            -- show the file title
opt.ttimeoutlen = 0         -- time in milliseconds to run commands.

-- wildmenu
opt.wildmenu = true         -- enable auto completion menu after pressing TAB.
opt.wildmode = "list:longest"   -- make wildmenu behave like similar to Bash completion.
-- There are certain files that we would never want to edit with Vim.
-- Wildmenu will ignore files with these extensions.
opt.wildignore = "*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx"

opt.iskeyword:append("-")

-- show replacements in a split screen, before applying to the file.
opt.inccommand = "split"
-- enables the clipboard between Vim/Neovim and other applications.
opt.clipboard:append("unnamedplus")
