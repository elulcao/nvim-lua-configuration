--

local setup, treesitter = pcall(require, "nvim-treesitter.configs")
if not setup then
	return
end

treesitter.setup({
	with_sync = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
	autotag = {
		enable = true,
	},
	ensure_installed = {
		"bash",
		"c",
		"cpp",
		"css",
		"dockerfile",
		"go",
		"gomod",
		"graphql",
		"html",
		"java",
		"javascript",
		"json",
		"lua",
		"python",
		"regex",
		"rust",
		"toml",
		"tsx",
		"typescript",
		"yaml",
	},
	auto_install = true,
})
