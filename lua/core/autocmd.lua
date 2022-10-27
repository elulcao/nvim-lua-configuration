--

local aucmd = vim.api.nvim_create_autocmd

aucmd("BufEnter", {
	command = "syntax sync maxlines=200",
})

aucmd("FileType, make", {
	command = "set noexpandtab",
})

aucmd("BufNewFile, BufRead", {
	pattern = "CMakeLists.txt",
	command = "set filetype=cmake",
})

aucmd("BufWritePre", {
	command = ":%s/\\s\\+$//e",
})

aucmd("GuiEnter", {
	command = "set visualbell t_vb=",
})

aucmd("BufRead, BufNewFile", {
	pattern = "*.go",
	command = "set tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=79 noexpandtab",
})

aucmd("FileType, python", {
	command = "set tabstop=4 shiftwidth=4 softtabstop=4 colorcolumn=79 expandtab",
})
