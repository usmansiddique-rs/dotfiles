-- import the nvim-web-devicons plugin
local status, nvim_devicons = pcall(require, "nvim-web-devicons")
if not status then
    return
end

-- configure here
nvim_devicons.setup {
    -- your personnal icons can go here (to override)
    override = {},
    -- globally enable default icons (default to false)
    default = true,
    -- globally enable "strict" selection of icons
    strict = true,
    -- same as `override` but specifically for overrides by filename
    override_by_filename = {
        [".gitignore"] = {
            icon = "",
            color = "#f1502f",
            name = "Gitignore"
        },
    },
    -- same as `override` but specifically for overrides by extension
    override_by_extension = {
        ["log"] = {
            icon = "",
            color = "#81e043",
            name = "Log"
        },
    }
}
