--

local setup, vimwiki = pcall(require, "vim-go")
if not setup then
	return
end

vimwiki.setup({
	run = ":GoInstallBinaries",
	go_list_type = "quickfix",
	go_fmt_command = "goimports",
	go_fmt_fail_silently = 1,
	go_fmt_autosave = 1,
	go_highlight_types = 1,
	go_highlight_fields = 1,
	go_highlight_functions = 1,
	go_highlight_methods = 1,
	go_highlight_operators = 1,
	go_highlight_structs = 1,
	go_highlight_build_constraints = 1,
	go_highlight_generate_tags = 1,
	go_highlight_space_tab_error = 0,
	go_highlight_array_whitespace_error = 0,
	go_highlight_trailing_whitespace_error = 0,
	go_highlight_extra_types = 1,
})
