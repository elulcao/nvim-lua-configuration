--

local setup, gitsigns = pcall(require, "gitsigns")
if not setup then
	return
end

gitsigns.setup({
	signs = {
		add = { text = "+", hl = "GitSignsAdd" },
		change = { text = "~", hl = "GitSignsChange" },
		delete = { text = "_", hl = "GitSignsDelete" },
		topdelete = { text = "-", hl = "GitSignsDelete" },
		changedelete = { text = "~", hl = "GitSignsChange" },
	},
})
