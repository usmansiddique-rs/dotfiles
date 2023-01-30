-- installs packer if its not installed when we open nvim
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads nvim and installs/upgrades/removes plugins
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

-- tries to import packer and if it fails wont do anything else
local status, packer = pcall(require, "packer")
if not status then
    return
end

-- configure our plugins
return require('packer').startup(function(use)
    -- install packer
    use("wbthomason/packer.nvim")
    use("nvim-lua/plenary.nvim")
    
    -- themes
    use("bluz71/vim-nightfly-colors")       -- https://github.com/bluz71/vim-nightfly-colors
    -- use("patstockwell/vim-monokai-tasty")   -- https://github.com/patstockwell/vim-monokai-tasty 
    -- use("EdenEast/nightfox.nvim")           -- https://github.com/EdenEast/nightfox.nvim
    -- use("morhetz/gruvbox")
    -- tmux and split window navigation")
    use("christoomey/vim-tmux-navigator")
    -- maximizes and restores current window
    use("szw/vim-maximizer")
    -- commenting with gc
    use("numtoStr/Comment.nvim")
    -- file explorer
    use("nvim-tree/nvim-tree.lua")
    -- file icons
    use("kyazdani42/nvim-web-devicons")
    -- statusline
    use("nvim-lualine/lualine.nvim")
    -- fuzzy finding
    use({"nvim-telescope/telescope-fzf-native.nvim", run="make"}) -- dependency to make telescope better
    use({"nvim-telescope/telescope.nvim", branch="0.1.x"})

    -- essential plugins
    use("tpope/vim-surround")
    use("vim-scripts/ReplaceWithRegister")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
