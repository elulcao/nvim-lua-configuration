--

local setup, toggleterm = pcall(require, "toggleterm")
if not setup then
	return
end

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = {},
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persistent_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
	local opts = {
		buffer = 0,
		noremap = true,
	}

	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], opts)
	vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>i]], opts)
	vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>j]], opts)
	vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>k]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
