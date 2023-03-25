require'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all" (the five listed parsers should always be installed)
        -- ensure_installed = { "c", "lua", "vim", "help" },
        ensure_installed = { "arduino",
                                "bash",
                                "c", "cpp",
                                "comment",
                                "cmake",
                                "dockerfile",
                                "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore",
                                "json",
                                "latex",
                                "make",
                                "markdown",
                                "python",
                                "rst",
                                "rust",
                                "verilog",
                                "vim",
                                "yaml",
                                "help"
                            },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        -- Automatically install missing parsers when entering buffer
        auto_install = true,
        -- List of parsers to ignore installing
        ignore_install = { "" },

        highlight = {
            -- false will disable the whole extension
            enable = true,
            -- NOTE: these are the names of the parsers and not the filetype.
            -- list of language that will be disabled
            disable = { "" },
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            additional_vim_regex_highlighting = false,
        },
        indent = {
            enable = true,
            disable = { "" },
        },
    }
