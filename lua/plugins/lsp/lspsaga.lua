--

local setup, lspsaga = pcall(require, "lspsaga")
if not setup then
	return
end

lspsaga.setup({
	move_in_saga = {
		prev = "<C-k>",
		next = "<C-j>",
	},
	finder_action_keys = {
		open = "<CR>",
	},
	definition_action_keys = {
		open = "<CR>",
	},
})
