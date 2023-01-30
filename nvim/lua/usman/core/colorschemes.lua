-- check for and apply various themes
-- to apply a theme simply uncomment the protected function call

-- theme = nightfly
-- theme = vim-monokai-tasty
-- theme = nightfox, dayfox, dawnfox, duskfox, nordfox, terafox, carbonfox

local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
    print("colorscheme NOT FOUND")
    return
end

