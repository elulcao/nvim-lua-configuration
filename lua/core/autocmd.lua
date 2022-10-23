--

local aucmd = vim.api.nvim_create_autocmd

aucmd("BufEnter", {
	command = "syntax sync maxlines=200",
})

aucmd("FileType, make", {
	command = "setlocal noexpandtab",
})

aucmd("BufNewFile, BufRead", {
	pattern = "CMakeLists.txt",
	command = "setlocal filetype=cmake",
})

aucmd("BufWritePre", {
	command = ":%s/\\s\\+$//e",
})

aucmd("GuiEnter", {
	command = "set visualbell t_vb=",
})

aucmd("BufRead, BufNewFile", {
	pattern = "*.go",
	command = "setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab",
})

aucmd("FileType, python", {
	command = "setlocal tabstop=8 shiftwidth=4 colorcolumn=79 expandtab",
})
