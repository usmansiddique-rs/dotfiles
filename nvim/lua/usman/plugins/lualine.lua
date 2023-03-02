-- import the lualine plugin
local status, lualine = pcall(require, "lualine")
if not status then
    return
end

-- get lualine 16color theme
local theme_16color = require("lualine.themes.16color")
-- get lualine dracula theme
local theme_dracula = require("lualine.themes.dracula")
-- get lualine nightfly theme
local theme_nightfly = require("lualine.themes.nightfly")
-- get lualine powerline theme
local theme_powerline = require("lualine.themes.powerline")
-- get lualine powerline_dark theme
local theme_powerline_dark = require("lualine.themes.powerline_dark")

-- configure lualine with modified theme
lualine.setup{
    options = {
        icons_enabled = true,
        theme = theme_powerline_dark,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {},
        always_divide_middle = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {{'filename', file_status = true, path = 0}},
        lualine_c = {'branch', 'diff', 'diagnostics'},
        lualine_x = {
            {'diagnostics', sources = { "nvim_diagnostic" }, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '}},
            'encoding',
            'fileformat',
            'filetype'
        },
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { {
            'filename',
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
        }},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'fugitive' }
}