--

local setup, tagbar = pcall(require, "tagbar")
if not setup then
	return
end

tagbar.setup({
	tagbar_autofocus = 1,
})
