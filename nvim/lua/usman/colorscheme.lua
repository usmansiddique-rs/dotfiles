-- local colorscheme = "default"
-- local colorscheme = "darkplus"
local colorscheme = "nightfly"
-- local colorscheme = "vim-monokai-tasty"
-- local colorscheme = "nightfox"
-- local colorscheme = "dayfox"
-- local colorscheme = "dawnfox"
-- local colorscheme = "duskfox"
-- local colorscheme = "nordfox"
-- local colorscheme = "terafox"
-- local colorscheme = "carbonfox"
-- local colorscheme = "gruvbox"

-- protected func call

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end
