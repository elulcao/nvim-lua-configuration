--

local g = vim.g

local setup, jedivim = pcall(require, "jedi-vim")
if not setup then
	return
end

g.python_highlight_all = 1

jedivim.setup({
	popup_on_dot = 0,
	goto_assignments_command = "<leader>g",
	goto_definitions_command = "<leader>d",
	documentation_command = "K",
	usages_command = "<leader>n",
	rename_command = "<leader>r",
	show_call_signatures = 0,
	completions_command = "<C-Space>",
	smart_auto_mappings = 0,
})
