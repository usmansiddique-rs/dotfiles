-- if you're missing a server config look for from the repo below:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- add the config for the LSP in dir: lua/usman/lsp/settings

-- list of servers to be installed
local servers = {
	-- "sumneko_lua",
	-- "pyright",
	-- "jsonls",
}

local settings = {
	ui = {
		border = "none",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

require("mason").setup(settings)
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

-- protected function call to import the lspconfig plugin
local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

-- register a handle that will be called for all installed servers
for _, server in pairs(servers) do
	opts = {
        --
		on_attach = require("usman.lsp.handlers").on_attach,
		--
        capabilities = require("usman.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	local require_ok, conf_opts = pcall(require, "usman.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

    -- setup the LSP server with the options provided
	lspconfig[server].setup(opts)
end
