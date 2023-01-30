-- import the lualine plugin
local status, lualine = pcall(require, "lualine")
if not status then
    return
end

-- get lualine 16color theme
local lualine_16color = require("lualine.themes.16color")
-- get lualine dracula theme
local lualine_dracula = require("lualine.themes.dracula")
-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")
-- get lualine powerline theme
local lualine_powerline = require("lualine.themes.powerline")

-- configure lualine with modified theme
lualine.setup({
    options = {
        theme = lualine_powerline
    },
})
