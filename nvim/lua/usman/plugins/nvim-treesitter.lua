-- import the nvim-treesitter plugin
local status, nvim_treesitter = pcall(require, "nvim-treesitter")
if not status then
    return
end

-- configure here
nvim_treesitter.setup {
    highlight = {
        enable = true,
        -- list of language that will be disabled for highlighting
        disable = {},
        -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
        disable = function(lang, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        -- list of language that will be disabled for indentation
        disable = {},
    },
    autotag = {
        enable = true,
    },
    -- A list of parser names, or "all" (listed parsers should always be installed)
    ensure_installed = {"help",
                        "arduino",
                        "bash",
                        "c", "cmake",
                        "comment",
                        "cpp",
                        "diff",
                        "dockerfile",
                        "git-rebase",
                        "gitattributes",
                        "gitcommit",
                        "gitignore",
                        "html",
                        "json",
                        "json5",
                        "JSON with comments",
                        "latex",
                        "lua",
                        "make",
                        "markdown",
                        "matlab",
                        "python",
                        "regex",
                        "scala",
                        "toml",
                        "verilog",
                        "yaml",
                    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    -- List of parsers to ignore installing (for "all")
    ignore_install = {},
}