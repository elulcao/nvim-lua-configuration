--

local setup, treesitter = pcall(require, "nvim-treesitter.install")
if not setup then
	return
end

local setup, treesitterconfigs = pcall(require, "nvim-treesitter.configs")
if not setup then
	return
end

treesitter.update({
	with_sync = true,
})

treesitterconfigs.setup({
	run = ":TSUpdate",
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
