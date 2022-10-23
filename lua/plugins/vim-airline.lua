--

local vimairlinethemes_setup, vimairlinethemes = pcall(require, "vim-airline-themes")
if not vimairlinethemes_setup then
	return
end

local setup = pcall(require, "vim-airline")
if not setup then
	return
end

vimairlinethemes.setup({
	airline_theme = "gruvbox",
	airline_powerline_fonts = true,
	airline_skip_empty_sections = true,
	airline = {
		{
			extensions = {
				ale = {
					enabled = true,
				},
				tabline = {
					enabled = true,
					left_sep = " ",
					left_alt_sep = "|",
				},
				virtualenv = {
					enabled = true,
				},
				tagbar = {
					enabled = true,
				},
				branch = {
					enabled = true,
					prefix = " ",
				},
				readonly = {
					enabled = true,
					prefix = " ",
				},
				linecolumn = {
					enabled = true,
					prefix = " ",
				},
				paste = {
					enabled = true,
					prefix = " ",
				},
			},
		},
	},
})
