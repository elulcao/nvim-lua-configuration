--

local setup, mason = pcall(require, "mason")
if not setup then
	return
end

local masonlspconfigsetup, masonlspconfig = pcall(require, "mason-lspconfig")
if not masonlspconfigsetup then
	return
end

local masonnulllssetup, masonnullls = pcall(require, "mason-null-ls")
if not masonnulllssetup then
	return
end

mason.setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
		-- Whether to automatically check for new versions when opening the :Mason window.
		check_outdated_packages_on_open = true,
	},
	keymaps = {
		-- Keymap to expand a package
		toggle_package_expand = "<CR>",
		-- Keymap to install the package under the current cursor position
		install_package = "i",
		-- Keymap to reinstall/update the package under the current cursor position
		update_package = "u",
		-- Keymap to check for new version for the package under the current cursor position
		check_package_version = "c",
		-- Keymap to update all installed packages
		update_all_packages = "U",
		-- Keymap to check which installed packages are outdated
		check_outdated_packages = "C",
		-- Keymap to uninstall a package
		uninstall_package = "X",
		-- Keymap to cancel a package installation
		cancel_installation = "<C-c>",
		-- Keymap to apply language filter
		apply_language_filter = "<C-f>",
	},
	-- Limit for the maximum amount of packages to be installed at the same time. Once this limit is reached, any further
	-- packages that are requested to be installed will be put in a queue.
	max_concurrent_installers = 4,
})

masonlspconfig.setup({
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"jsonls",
		"bashls",
		"vimls",
		"pyright",
		"rust_analyzer",
		"gopls",
		"golangci_lint_ls",
		"lua_ls",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

masonnullls.setup({
	sources = {
		"prettier",
		"eslint",
		"shellcheck",
		"luacheck",
		"luaformatter",
		"golangci_lint",
		"rustfmt",
		"rust_analyzer",
		"gofumpt",
		"gopls",
		"goimports",
		"golangci_lint",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true,
})
