-- installs packer plugin manager if its not installed when we open nvim
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
    use("wbthomason/packer.nvim")       -- packer plugin manager
    use("nvim-lua/plenary.nvim")        -- common utilities
    use("kyazdani42/nvim-web-devicons") -- file icons
    use({"nvim-lualine/lualine.nvim", requires = {'kyazdani42/nvim-web-devicons', opt = true}})    -- statusline
    use("nvim-tree/nvim-tree.lua")      -- file explorer
    use("szw/vim-maximizer")            -- maximizes and restores current window



    -- colorschemes
    use("bluz71/vim-nightfly-colors")       -- nightfly
    use("patstockwell/vim-monokai-tasty")   -- monokai
    use("EdenEast/nightfox.nvim")           -- nightbox
    use("morhetz/gruvbox")                  -- gruvbox

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)



-- -- tmux and split window navigation")
-- use("christoomey/vim-tmux-navigator")
-- -- commenting with gc
-- use("numtoStr/Comment.nvim")
-- -- indent blankline
-- use("lukas-reineke/indent-blankline.nvim")
-- -- fuzzy finding
-- use({"nvim-telescope/telescope-fzf-native.nvim", run="make"}) -- dependency to make telescope better
-- use({"nvim-telescope/telescope.nvim", tag="0.1.1"})
-- -- autocompletion
-- use("hrsh7th/nvim-cmp")     -- basic autocompletion
-- use("hrsh7th/cmp-buffer")   -- recommend text from current buffer for vars
-- use("hrsh7th/cmp-path")     -- recommend text from current buffer for paths
-- -- code snippets
-- use("L3MON4D3/LuaSnip")             -- snippet engine
-- use("saadparwaiz1/cmp_luasnip")     -- allows nvim-cmp to show snippets in autocompletion
-- use("rafamadriz/friendly-snippets") -- collection of useful snippets


-- -- essential plugins
-- use("tpope/vim-surround")
-- use("vim-scripts/ReplaceWithRegister")
